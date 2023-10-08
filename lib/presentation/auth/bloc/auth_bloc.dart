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
  }

  String _verificationCode = '';

  _onPhoneVerifyEvent(PhoneVerifyEvent event, Emitter<AuthState> emit) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.verifyPhoneNumber(
      phoneNumber: event.phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {
        emit(AuthState.verificationError(e));
      },
      codeSent: (String verificationId, int? resendToken) async {
        _verificationCode = verificationId;
        print('номерномерномер');
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  _onSignInEvent(SignInEvent event, Emitter<AuthState> emit) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: _verificationCode,
          smsCode: event.smsCode,
        ),
      );
      emit(const AuthState.correctSmsCode());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.wrongSmsCode(e));
    }
  }
}
