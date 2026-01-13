part of 'signin_cubit.dart';

sealed class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

final class SignInitial extends SignInState {}

final class SignLoading extends SignInState {}

final class SignSuccess extends SignInState {
  final UserEntity userEntity;

  const SignSuccess({required this.userEntity});

  @override
  List<Object> get props => [userEntity];
}

final class SignFailure extends SignInState {
  final String errorMessage;
  const SignFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
