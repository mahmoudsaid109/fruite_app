import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword(
    String email,
    String password,
  );
}
