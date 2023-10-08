import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<PhoneVerifyEvent>(_onPhoneVerifyEvent);
    on<SignInEvent>(_onSignInEvent);
    on<OnVerificationFailedEvent>(_onVerificationFailedEvent);
    on<OnCodeSentEvent>(_onCodeSentEvent);
  }

  String? _verificationCode;
  int? _resendToken;

  _onPhoneVerifyEvent(PhoneVerifyEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: event.phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        add(OnVerificationFailedEvent(e));
      },
      codeSent: (String verificationId, int? resendToken) async {
        add(OnCodeSentEvent(verificationId, resendToken));
      },
      forceResendingToken: _resendToken,
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  _onSignInEvent(SignInEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());

      await FirebaseAuth.instance.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: _verificationCode!,
          smsCode: event.smsCode,
        ),
      );
      emit(const AuthState.correctSmsCode());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.wrongSmsCode(e));
    }
  }

  _onVerificationFailedEvent(
      OnVerificationFailedEvent event, Emitter<AuthState> emit) {
    emit(AuthState.verificationError(event.exception));
  }

  _onCodeSentEvent(OnCodeSentEvent event, Emitter<AuthState> emit) {
    _verificationCode = event.verificationId;
    _resendToken = event.resendToken;
    emit(const AuthState.verificationSuccess());
  }
}
