import 'package:officer/core/domain/usecase/failures.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/features/auth/domain/models/attendance_model/attendance_response.dart';
import 'package:dartz/dartz.dart';

import '../repository/repo.dart';

class GetAttendanceHistoryUseCase
    implements Usecase<List<AttendanceHistoryItem>, NoParams> {
  final AuthRepository _repository;

  GetAttendanceHistoryUseCase(this._repository);

  @override
  Future<Either<List<AttendanceHistoryItem>, UIError>> call(
      NoParams params) async {
    try {
      final response = await _repository.getAttendanceHistory();
      return left(response);
    } on NetworkFailure catch (e, s) {
      return right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
