part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.phoneVerify(String phoneNumber) = PhoneVerifyEvent;
  const factory AuthEvent.signIn(String smsCode) = SignInEvent;
}
