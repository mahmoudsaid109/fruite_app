import 'package:dartz/dartz.dart';
import 'package:fruite_app/core/errors/failure.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password) {
    
    throw UnimplementedError();
  }
}