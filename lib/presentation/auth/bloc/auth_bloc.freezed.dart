// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneVerify,
    required TResult Function(String smsCode) signIn,
    required TResult Function(FirebaseAuthException exception)
        onVerificationFailed,
    required TResult Function(String verificationId, int? resendToken)
        onCodeSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneVerify,
    TResult? Function(String smsCode)? signIn,
    TResult? Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult? Function(String verificationId, int? resendToken)? onCodeSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneVerify,
    TResult Function(String smsCode)? signIn,
    TResult Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult Function(String verificationId, int? resendToken)? onCodeSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneVerifyEvent value) phoneVerify,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(OnVerificationFailedEvent value)
        onVerificationFailed,
    required TResult Function(OnCodeSentEvent value) onCodeSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneVerifyEvent value)? phoneVerify,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult? Function(OnCodeSentEvent value)? onCodeSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneVerifyEvent value)? phoneVerify,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult Function(OnCodeSentEvent value)? onCodeSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneVerifyEventImplCopyWith<$Res> {
  factory _$$PhoneVerifyEventImplCopyWith(_$PhoneVerifyEventImpl value,
          $Res Function(_$PhoneVerifyEventImpl) then) =
      __$$PhoneVerifyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneVerifyEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneVerifyEventImpl>
    implements _$$PhoneVerifyEventImplCopyWith<$Res> {
  __$$PhoneVerifyEventImplCopyWithImpl(_$PhoneVerifyEventImpl _value,
      $Res Function(_$PhoneVerifyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneVerifyEventImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneVerifyEventImpl implements PhoneVerifyEvent {
  const _$PhoneVerifyEventImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.phoneVerify(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerifyEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerifyEventImplCopyWith<_$PhoneVerifyEventImpl> get copyWith =>
      __$$PhoneVerifyEventImplCopyWithImpl<_$PhoneVerifyEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneVerify,
    required TResult Function(String smsCode) signIn,
    required TResult Function(FirebaseAuthException exception)
        onVerificationFailed,
    required TResult Function(String verificationId, int? resendToken)
        onCodeSent,
  }) {
    return phoneVerify(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneVerify,
    TResult? Function(String smsCode)? signIn,
    TResult? Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult? Function(String verificationId, int? resendToken)? onCodeSent,
  }) {
    return phoneVerify?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneVerify,
    TResult Function(String smsCode)? signIn,
    TResult Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult Function(String verificationId, int? resendToken)? onCodeSent,
    required TResult orElse(),
  }) {
    if (phoneVerify != null) {
      return phoneVerify(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneVerifyEvent value) phoneVerify,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(OnVerificationFailedEvent value)
        onVerificationFailed,
    required TResult Function(OnCodeSentEvent value) onCodeSent,
  }) {
    return phoneVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneVerifyEvent value)? phoneVerify,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult? Function(OnCodeSentEvent value)? onCodeSent,
  }) {
    return phoneVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneVerifyEvent value)? phoneVerify,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult Function(OnCodeSentEvent value)? onCodeSent,
    required TResult orElse(),
  }) {
    if (phoneVerify != null) {
      return phoneVerify(this);
    }
    return orElse();
  }
}

abstract class PhoneVerifyEvent implements AuthEvent {
  const factory PhoneVerifyEvent(final String phoneNumber) =
      _$PhoneVerifyEventImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneVerifyEventImplCopyWith<_$PhoneVerifyEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String smsCode});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smsCode = null,
  }) {
    return _then(_$SignInEventImpl(
      null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInEventImpl implements SignInEvent {
  const _$SignInEventImpl(this.smsCode);

  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthEvent.signIn(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smsCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneVerify,
    required TResult Function(String smsCode) signIn,
    required TResult Function(FirebaseAuthException exception)
        onVerificationFailed,
    required TResult Function(String verificationId, int? resendToken)
        onCodeSent,
  }) {
    return signIn(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneVerify,
    TResult? Function(String smsCode)? signIn,
    TResult? Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult? Function(String verificationId, int? resendToken)? onCodeSent,
  }) {
    return signIn?.call(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneVerify,
    TResult Function(String smsCode)? signIn,
    TResult Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult Function(String verificationId, int? resendToken)? onCodeSent,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneVerifyEvent value) phoneVerify,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(OnVerificationFailedEvent value)
        onVerificationFailed,
    required TResult Function(OnCodeSentEvent value) onCodeSent,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneVerifyEvent value)? phoneVerify,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult? Function(OnCodeSentEvent value)? onCodeSent,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneVerifyEvent value)? phoneVerify,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult Function(OnCodeSentEvent value)? onCodeSent,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements AuthEvent {
  const factory SignInEvent(final String smsCode) = _$SignInEventImpl;

  String get smsCode;
  @JsonKey(ignore: true)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnVerificationFailedEventImplCopyWith<$Res> {
  factory _$$OnVerificationFailedEventImplCopyWith(
          _$OnVerificationFailedEventImpl value,
          $Res Function(_$OnVerificationFailedEventImpl) then) =
      __$$OnVerificationFailedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class __$$OnVerificationFailedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnVerificationFailedEventImpl>
    implements _$$OnVerificationFailedEventImplCopyWith<$Res> {
  __$$OnVerificationFailedEventImplCopyWithImpl(
      _$OnVerificationFailedEventImpl _value,
      $Res Function(_$OnVerificationFailedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$OnVerificationFailedEventImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$OnVerificationFailedEventImpl implements OnVerificationFailedEvent {
  const _$OnVerificationFailedEventImpl(this.exception);

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'AuthEvent.onVerificationFailed(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnVerificationFailedEventImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnVerificationFailedEventImplCopyWith<_$OnVerificationFailedEventImpl>
      get copyWith => __$$OnVerificationFailedEventImplCopyWithImpl<
          _$OnVerificationFailedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneVerify,
    required TResult Function(String smsCode) signIn,
    required TResult Function(FirebaseAuthException exception)
        onVerificationFailed,
    required TResult Function(String verificationId, int? resendToken)
        onCodeSent,
  }) {
    return onVerificationFailed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneVerify,
    TResult? Function(String smsCode)? signIn,
    TResult? Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult? Function(String verificationId, int? resendToken)? onCodeSent,
  }) {
    return onVerificationFailed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneVerify,
    TResult Function(String smsCode)? signIn,
    TResult Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult Function(String verificationId, int? resendToken)? onCodeSent,
    required TResult orElse(),
  }) {
    if (onVerificationFailed != null) {
      return onVerificationFailed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneVerifyEvent value) phoneVerify,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(OnVerificationFailedEvent value)
        onVerificationFailed,
    required TResult Function(OnCodeSentEvent value) onCodeSent,
  }) {
    return onVerificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneVerifyEvent value)? phoneVerify,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult? Function(OnCodeSentEvent value)? onCodeSent,
  }) {
    return onVerificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneVerifyEvent value)? phoneVerify,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult Function(OnCodeSentEvent value)? onCodeSent,
    required TResult orElse(),
  }) {
    if (onVerificationFailed != null) {
      return onVerificationFailed(this);
    }
    return orElse();
  }
}

abstract class OnVerificationFailedEvent implements AuthEvent {
  const factory OnVerificationFailedEvent(
      final FirebaseAuthException exception) = _$OnVerificationFailedEventImpl;

  FirebaseAuthException get exception;
  @JsonKey(ignore: true)
  _$$OnVerificationFailedEventImplCopyWith<_$OnVerificationFailedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCodeSentEventImplCopyWith<$Res> {
  factory _$$OnCodeSentEventImplCopyWith(_$OnCodeSentEventImpl value,
          $Res Function(_$OnCodeSentEventImpl) then) =
      __$$OnCodeSentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? resendToken});
}

/// @nodoc
class __$$OnCodeSentEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$OnCodeSentEventImpl>
    implements _$$OnCodeSentEventImplCopyWith<$Res> {
  __$$OnCodeSentEventImplCopyWithImpl(
      _$OnCodeSentEventImpl _value, $Res Function(_$OnCodeSentEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
  }) {
    return _then(_$OnCodeSentEventImpl(
      null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnCodeSentEventImpl implements OnCodeSentEvent {
  const _$OnCodeSentEventImpl(this.verificationId, this.resendToken);

  @override
  final String verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'AuthEvent.onCodeSent(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCodeSentEventImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, resendToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCodeSentEventImplCopyWith<_$OnCodeSentEventImpl> get copyWith =>
      __$$OnCodeSentEventImplCopyWithImpl<_$OnCodeSentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneVerify,
    required TResult Function(String smsCode) signIn,
    required TResult Function(FirebaseAuthException exception)
        onVerificationFailed,
    required TResult Function(String verificationId, int? resendToken)
        onCodeSent,
  }) {
    return onCodeSent(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneVerify,
    TResult? Function(String smsCode)? signIn,
    TResult? Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult? Function(String verificationId, int? resendToken)? onCodeSent,
  }) {
    return onCodeSent?.call(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneVerify,
    TResult Function(String smsCode)? signIn,
    TResult Function(FirebaseAuthException exception)? onVerificationFailed,
    TResult Function(String verificationId, int? resendToken)? onCodeSent,
    required TResult orElse(),
  }) {
    if (onCodeSent != null) {
      return onCodeSent(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneVerifyEvent value) phoneVerify,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(OnVerificationFailedEvent value)
        onVerificationFailed,
    required TResult Function(OnCodeSentEvent value) onCodeSent,
  }) {
    return onCodeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneVerifyEvent value)? phoneVerify,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult? Function(OnCodeSentEvent value)? onCodeSent,
  }) {
    return onCodeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneVerifyEvent value)? phoneVerify,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(OnVerificationFailedEvent value)? onVerificationFailed,
    TResult Function(OnCodeSentEvent value)? onCodeSent,
    required TResult orElse(),
  }) {
    if (onCodeSent != null) {
      return onCodeSent(this);
    }
    return orElse();
  }
}

abstract class OnCodeSentEvent implements AuthEvent {
  const factory OnCodeSentEvent(
          final String verificationId, final int? resendToken) =
      _$OnCodeSentEventImpl;

  String get verificationId;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$OnCodeSentEventImplCopyWith<_$OnCodeSentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAuthStateImplCopyWith<$Res> {
  factory _$$InitialAuthStateImplCopyWith(_$InitialAuthStateImpl value,
          $Res Function(_$InitialAuthStateImpl) then) =
      __$$InitialAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialAuthStateImpl>
    implements _$$InitialAuthStateImplCopyWith<$Res> {
  __$$InitialAuthStateImplCopyWithImpl(_$InitialAuthStateImpl _value,
      $Res Function(_$InitialAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAuthStateImpl implements InitialAuthState {
  const _$InitialAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAuthState implements AuthState {
  const factory InitialAuthState() = _$InitialAuthStateImpl;
}

/// @nodoc
abstract class _$$loadingAuthStateImplCopyWith<$Res> {
  factory _$$loadingAuthStateImplCopyWith(_$loadingAuthStateImpl value,
          $Res Function(_$loadingAuthStateImpl) then) =
      __$$loadingAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$loadingAuthStateImpl>
    implements _$$loadingAuthStateImplCopyWith<$Res> {
  __$$loadingAuthStateImplCopyWithImpl(_$loadingAuthStateImpl _value,
      $Res Function(_$loadingAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingAuthStateImpl implements loadingAuthState {
  const _$loadingAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class loadingAuthState implements AuthState {
  const factory loadingAuthState() = _$loadingAuthStateImpl;
}

/// @nodoc
abstract class _$$VerificationSuccessAuthStateImplCopyWith<$Res> {
  factory _$$VerificationSuccessAuthStateImplCopyWith(
          _$VerificationSuccessAuthStateImpl value,
          $Res Function(_$VerificationSuccessAuthStateImpl) then) =
      __$$VerificationSuccessAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerificationSuccessAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerificationSuccessAuthStateImpl>
    implements _$$VerificationSuccessAuthStateImplCopyWith<$Res> {
  __$$VerificationSuccessAuthStateImplCopyWithImpl(
      _$VerificationSuccessAuthStateImpl _value,
      $Res Function(_$VerificationSuccessAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerificationSuccessAuthStateImpl
    implements VerificationSuccessAuthState {
  const _$VerificationSuccessAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.verificationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSuccessAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return verificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return verificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return verificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return verificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess(this);
    }
    return orElse();
  }
}

abstract class VerificationSuccessAuthState implements AuthState {
  const factory VerificationSuccessAuthState() =
      _$VerificationSuccessAuthStateImpl;
}

/// @nodoc
abstract class _$$VerificationErrorAuthStateImplCopyWith<$Res> {
  factory _$$VerificationErrorAuthStateImplCopyWith(
          _$VerificationErrorAuthStateImpl value,
          $Res Function(_$VerificationErrorAuthStateImpl) then) =
      __$$VerificationErrorAuthStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$VerificationErrorAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerificationErrorAuthStateImpl>
    implements _$$VerificationErrorAuthStateImplCopyWith<$Res> {
  __$$VerificationErrorAuthStateImplCopyWithImpl(
      _$VerificationErrorAuthStateImpl _value,
      $Res Function(_$VerificationErrorAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$VerificationErrorAuthStateImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$VerificationErrorAuthStateImpl implements VerificationErrorAuthState {
  const _$VerificationErrorAuthStateImpl(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'AuthState.verificationError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationErrorAuthStateImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationErrorAuthStateImplCopyWith<_$VerificationErrorAuthStateImpl>
      get copyWith => __$$VerificationErrorAuthStateImplCopyWithImpl<
          _$VerificationErrorAuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return verificationError(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return verificationError?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return verificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return verificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (verificationError != null) {
      return verificationError(this);
    }
    return orElse();
  }
}

abstract class VerificationErrorAuthState implements AuthState {
  const factory VerificationErrorAuthState(final Exception exception) =
      _$VerificationErrorAuthStateImpl;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$VerificationErrorAuthStateImplCopyWith<_$VerificationErrorAuthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CorrectSmsCodeAuthStateImplCopyWith<$Res> {
  factory _$$CorrectSmsCodeAuthStateImplCopyWith(
          _$CorrectSmsCodeAuthStateImpl value,
          $Res Function(_$CorrectSmsCodeAuthStateImpl) then) =
      __$$CorrectSmsCodeAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CorrectSmsCodeAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CorrectSmsCodeAuthStateImpl>
    implements _$$CorrectSmsCodeAuthStateImplCopyWith<$Res> {
  __$$CorrectSmsCodeAuthStateImplCopyWithImpl(
      _$CorrectSmsCodeAuthStateImpl _value,
      $Res Function(_$CorrectSmsCodeAuthStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CorrectSmsCodeAuthStateImpl implements CorrectSmsCodeAuthState {
  const _$CorrectSmsCodeAuthStateImpl();

  @override
  String toString() {
    return 'AuthState.correctSmsCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CorrectSmsCodeAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return correctSmsCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return correctSmsCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (correctSmsCode != null) {
      return correctSmsCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return correctSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return correctSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (correctSmsCode != null) {
      return correctSmsCode(this);
    }
    return orElse();
  }
}

abstract class CorrectSmsCodeAuthState implements AuthState {
  const factory CorrectSmsCodeAuthState() = _$CorrectSmsCodeAuthStateImpl;
}

/// @nodoc
abstract class _$$WrongSmsCodeAuthStateImplCopyWith<$Res> {
  factory _$$WrongSmsCodeAuthStateImplCopyWith(
          _$WrongSmsCodeAuthStateImpl value,
          $Res Function(_$WrongSmsCodeAuthStateImpl) then) =
      __$$WrongSmsCodeAuthStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$WrongSmsCodeAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$WrongSmsCodeAuthStateImpl>
    implements _$$WrongSmsCodeAuthStateImplCopyWith<$Res> {
  __$$WrongSmsCodeAuthStateImplCopyWithImpl(_$WrongSmsCodeAuthStateImpl _value,
      $Res Function(_$WrongSmsCodeAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$WrongSmsCodeAuthStateImpl(
      null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$WrongSmsCodeAuthStateImpl implements WrongSmsCodeAuthState {
  const _$WrongSmsCodeAuthStateImpl(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'AuthState.wrongSmsCode(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongSmsCodeAuthStateImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WrongSmsCodeAuthStateImplCopyWith<_$WrongSmsCodeAuthStateImpl>
      get copyWith => __$$WrongSmsCodeAuthStateImplCopyWithImpl<
          _$WrongSmsCodeAuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() verificationSuccess,
    required TResult Function(Exception exception) verificationError,
    required TResult Function() correctSmsCode,
    required TResult Function(Exception exception) wrongSmsCode,
  }) {
    return wrongSmsCode(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? verificationSuccess,
    TResult? Function(Exception exception)? verificationError,
    TResult? Function()? correctSmsCode,
    TResult? Function(Exception exception)? wrongSmsCode,
  }) {
    return wrongSmsCode?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? verificationSuccess,
    TResult Function(Exception exception)? verificationError,
    TResult Function()? correctSmsCode,
    TResult Function(Exception exception)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (wrongSmsCode != null) {
      return wrongSmsCode(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAuthState value) initial,
    required TResult Function(loadingAuthState value) loading,
    required TResult Function(VerificationSuccessAuthState value)
        verificationSuccess,
    required TResult Function(VerificationErrorAuthState value)
        verificationError,
    required TResult Function(CorrectSmsCodeAuthState value) correctSmsCode,
    required TResult Function(WrongSmsCodeAuthState value) wrongSmsCode,
  }) {
    return wrongSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAuthState value)? initial,
    TResult? Function(loadingAuthState value)? loading,
    TResult? Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult? Function(VerificationErrorAuthState value)? verificationError,
    TResult? Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult? Function(WrongSmsCodeAuthState value)? wrongSmsCode,
  }) {
    return wrongSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAuthState value)? initial,
    TResult Function(loadingAuthState value)? loading,
    TResult Function(VerificationSuccessAuthState value)? verificationSuccess,
    TResult Function(VerificationErrorAuthState value)? verificationError,
    TResult Function(CorrectSmsCodeAuthState value)? correctSmsCode,
    TResult Function(WrongSmsCodeAuthState value)? wrongSmsCode,
    required TResult orElse(),
  }) {
    if (wrongSmsCode != null) {
      return wrongSmsCode(this);
    }
    return orElse();
  }
}

abstract class WrongSmsCodeAuthState implements AuthState {
  const factory WrongSmsCodeAuthState(final Exception exception) =
      _$WrongSmsCodeAuthStateImpl;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$WrongSmsCodeAuthStateImplCopyWith<_$WrongSmsCodeAuthStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
