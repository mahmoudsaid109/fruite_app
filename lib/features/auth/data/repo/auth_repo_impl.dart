import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruite_app/core/errors/exceptions.dart';
import 'package:fruite_app/core/errors/failure.dart';
import 'package:fruite_app/core/services/data_services.dart';
import 'package:fruite_app/core/services/firebase_auth_services.dart';
import 'package:fruite_app/core/utils/endpoint.dart';
import 'package:fruite_app/features/auth/data/models/user_model.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseServices databaseServices;

  AuthRepoImpl({
    required this.firebaseAuthServices,
    required this.databaseServices,
  });
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    User? user;
    try {
      user = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var userEntity = UserEntity(id: user.uid, name: name, email: email);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      await deleteuser(user);
      return left(ServerFailure(e.message));
    } catch (e) {
      await deleteuser(user);
      log(
        "Error in AuthRepoImpl - createUserWithEmailAndPassword: ${e.toString()}",
      );
      return left(ServerFailure(e.toString()));
    }
  }

  Future<void> deleteuser(User? user) async {
    if (user != null) {
      await firebaseAuthServices.deleteUser();
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log(
        "Error in AuthRepoImpl - signInWithEmailAndPassword: ${e.toString()}",
      );
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWitGoogle() async {
    User ? user;
    try {
       user = await firebaseAuthServices.signInWithGoogle();
      var userEntity = UserModel.fromFirebaseUser(user);
      await addUserData(user: userEntity);
      return right(userEntity);
    } catch (e) {
      await deleteuser(user);
      log("Error in AuthRepoImpl - signInWitGoogle: ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = firebaseAuthServices.signInWithFacebook();
      return right(UserModel.fromFirebaseUser(user as dynamic));
    } catch (e) {
      log("Error in AuthRepoImpl - signInWithFacebook: ${e.toString()}");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseServices.addData(Endpoint.addUserData, user.toMap());
  }
}
