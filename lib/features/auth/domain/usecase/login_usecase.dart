import 'package:officer/core/domain/usecase/failures.dart';
import 'package:officer/core/domain/usecase/usecase_typedefs.dart';
import 'package:officer/core/utilities/error_helpers.dart';
import 'package:officer/features/auth/domain/models/auth_model/auth_model.dart';
import 'package:dartz/dartz.dart';

import '../repository/repo.dart';

class LoginUseCase implements Usecase<AuthModel, Map<String, dynamic>> {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<AuthModel, UIError>> call(Map<String, dynamic> payload) async {
    try {
      final response = await _repository.login(payload);
      return left(response);
    } on NetworkFailure catch (e, s) {
      return right(getUIErrorFromUsecaseFailure(e.message, e, s));
    }
  }
}
