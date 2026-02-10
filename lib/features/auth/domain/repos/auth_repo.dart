import 'package:dartz/dartz.dart';
import 'package:fruite_app/core/errors/failure.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name
  );

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future addUserData({required UserEntity user});
  Future saveUserData({required UserEntity user});
  Future<UserEntity> getUserData({required String userId});

  Future<Either<Failure, UserEntity>> signInWitGoogle();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
}
