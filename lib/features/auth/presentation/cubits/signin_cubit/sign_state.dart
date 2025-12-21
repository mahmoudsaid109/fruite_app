part of 'signin_cubit.dart';

sealed class SignState extends Equatable {
  const SignState();

  @override
  List<Object> get props => [];
}

final class SignInitial extends SignState {}

final class SignLoading extends SignState {}

final class SignSuccess extends SignState {
  final UserEntity userEntity;

  const SignSuccess({required this.userEntity});

  @override
  List<Object> get props => [userEntity];
}

final class SignFailure extends SignState {
  final String errorMessage;
  const SignFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}
