import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepo authRepo;

  Future<void> signIn(String email, String password) async {
    emit(LoginLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(LoginFailure(failure.message)),
      (userEntity) => emit(LoginSuccess(userEntity: userEntity)),
    );
  }
}
