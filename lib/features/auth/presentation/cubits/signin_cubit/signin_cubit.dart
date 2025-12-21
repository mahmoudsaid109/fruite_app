import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';
import 'package:fruite_app/features/auth/domain/repos/auth_repo.dart';

part 'sign_state.dart';

class SigInCubit extends Cubit<SignState> {
  SigInCubit(this.authRepo) : super(SignInitial());
  final AuthRepo authRepo;

  Future<void> signIn(String email, String password) async {
    emit(SignLoading());
    var result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SignFailure(failure.message)),
      (userEntity) => emit(SignSuccess(userEntity: userEntity)),
    );
  }
}
