import 'package:blog_app/core/errors/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IAuthenticationRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword() {}
}
