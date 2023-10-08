part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = InitialAuthState;
  const factory AuthState.loading() = loadingAuthState;
  const factory AuthState.verificationSuccess() = VerificationSuccessAuthState;
  const factory AuthState.verificationError(Exception exception) =
      VerificationErrorAuthState;
  const factory AuthState.correctSmsCode() = CorrectSmsCodeAuthState;
  const factory AuthState.wrongSmsCode(Exception exception) =
      WrongSmsCodeAuthState;
}
