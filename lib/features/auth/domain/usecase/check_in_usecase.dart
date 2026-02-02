import 'package:officer/core/domain/usecase/failures.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/features/auth/domain/models/auth_model/today_attendance.dart';
import 'package:dartz/dartz.dart';

import '../repository/repo.dart';

class CheckInUseCase implements Usecase<TodayAttendance, NoParams> {
  final AuthRepository _repository;

  CheckInUseCase(this._repository);

  @override
  Future<Either<TodayAttendance, UIError>> call(NoParams params) async {
    try {
      final response = await _repository.checkIn();
      return left(response);
    } on NetworkFailure catch (e, s) {
      return right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
