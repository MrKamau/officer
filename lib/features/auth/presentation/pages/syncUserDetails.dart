import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/features/auth/presentation/pages/login.dart';
import 'package:flutter/material.dart';

import '../../domain/models/auth_model/auth_model.dart';

handleFailedSync(BuildContext context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Account error'),
      content: const Text('You login details could not be found'),
      actions: <Widget>[
        // TextButton(
        //   onPressed: () => Navigator.pop(context, 'Cancel'),
        //   child: const Text('Cancel'),
        // ),
        TextButton(
          onPressed: () {
            // Navigator.pop(context, 'Login');

            clearAll();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const OfficerLogin()),
            );
          },
          child: const Text('Login'),
        ),
      ],
    ),
  );
}

Future syncUserDetails(BuildContext context, AuthModel authModel) async {
  if (authModel.officer == null) {
    handleFailedSync(context);
    return;
  }

  LocalStorage localStorage = LocalStorage();
  await localStorage.initialize();

  localStorage.storeData('name', authModel.officer?.name ?? '');

  localStorage.storeData(
      'service_number', authModel.officer?.serviceNumber ?? '');
  localStorage.storeData('email', authModel.officer?.email ?? '');
  localStorage.storeData('phone_no', authModel.officer?.contactInfo ?? '');
  localStorage.storeData('rank', authModel.officer?.rank?.name ?? '');
  localStorage.storeData(
      'police_officer_id', authModel.officer?.id!.toString() ?? '');
  localStorage.storeData(
      'service_number', authModel.officer?.serviceNumber ?? '');
  localStorage.storeData('email', authModel.officer?.email ?? '');
  localStorage.storeData('rank', authModel.officer?.role?.name ?? '');
  localStorage.storeData(
      'police_station_name', authModel.officer?.station?.name ?? '');

  // localStorage.storeData(
  //     'police_station_id', policeOfficer.police_station.id.toString());
  // localStorage.storeData(
  //     'police_station_name', policeOfficer.police_station.name);
  // localStorage.storeData('mug_shot', policeOfficer.mug_shot);
}
