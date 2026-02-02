import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/core/data/network_datasource/network_service.dart';
import 'package:officer/core/data/network_datasource/network_service_impl.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/core/utilities/logging_utils.dart';
import 'package:officer/features/auth/domain/models/device_registration_model/device_registration_model.dart';
import 'dart:convert';

import 'endpoints.dart';

abstract class DeviceDataSource {
  Future<DeviceRegistrationModel> registerDevice(Map<String, dynamic> payload);
}

class DeviceDataSourceImpl implements DeviceDataSource {
  final NetworkService _networkService;

  DeviceDataSourceImpl(this._networkService);

  @override
  Future<DeviceRegistrationModel> registerDevice(
      Map<String, dynamic> payload) async {
    var response = await _networkService.postHttp(
      AuthEndpoints.deviceRegistration,
      body: jsonEncode(payload),
      tokenRequired: false,
    );

    logger.w(response['statusCode']);
    logger.w(response['error']);
    if (response['error'] != null) {
      await handleApiFailure(
        source: 'device_registration',
        errorMessage: response['message'] as String,
        errorCode: response['error'] as ApiErrors,
        isOnlineStatus: true,
      );
    }

    logger.w(response);

    // Extract token from response if present
    final data = response['data'] as Map<String, dynamic>;
    if (response['token'] != null) {
      data['token'] = response['token'];
    }

    // Extract station name from response if present
    // Response structure: data.policeStation.name
    String? stationName;
    if (data['policeStation'] != null && data['policeStation'] is Map) {
      stationName =
          (data['policeStation'] as Map<String, dynamic>)['name'] as String?;
      if (stationName != null) {
        data['station_name'] = stationName;
        storeData("police_station_name", stationName);
        logger.i('Station name extracted from response: $stationName');
      }
    }

    return DeviceRegistrationModel.fromJson(data);
  }
}
