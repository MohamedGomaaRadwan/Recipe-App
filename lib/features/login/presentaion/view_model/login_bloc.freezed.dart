// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChange,
    required TResult Function(String password) onPasswordChange,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onEmailChange,
    TResult? Function(String password)? onPasswordChange,
    TResult? Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChange,
    TResult Function(String password)? onPasswordChange,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailEventChanged value) onEmailChange,
    required TResult Function(_PasswordEventChanged value) onPasswordChange,
    required TResult Function(_LoginEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailEventChanged value)? onEmailChange,
    TResult? Function(_PasswordEventChanged value)? onPasswordChange,
    TResult? Function(_LoginEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailEventChanged value)? onEmailChange,
    TResult Function(_PasswordEventChanged value)? onPasswordChange,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmailEventChangedCopyWith<$Res> {
  factory _$$_EmailEventChangedCopyWith(_$_EmailEventChanged value,
          $Res Function(_$_EmailEventChanged) then) =
      __$$_EmailEventChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailEventChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_EmailEventChanged>
    implements _$$_EmailEventChangedCopyWith<$Res> {
  __$$_EmailEventChangedCopyWithImpl(
      _$_EmailEventChanged _value, $Res Function(_$_EmailEventChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailEventChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailEventChanged implements _EmailEventChanged {
  _$_EmailEventChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.onEmailChange(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailEventChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailEventChangedCopyWith<_$_EmailEventChanged> get copyWith =>
      __$$_EmailEventChangedCopyWithImpl<_$_EmailEventChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChange,
    required TResult Function(String password) onPasswordChange,
    required TResult Function() login,
  }) {
    return onEmailChange(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onEmailChange,
    TResult? Function(String password)? onPasswordChange,
    TResult? Function()? login,
  }) {
    return onEmailChange?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChange,
    TResult Function(String password)? onPasswordChange,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (onEmailChange != null) {
      return onEmailChange(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailEventChanged value) onEmailChange,
    required TResult Function(_PasswordEventChanged value) onPasswordChange,
    required TResult Function(_LoginEvent value) login,
  }) {
    return onEmailChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailEventChanged value)? onEmailChange,
    TResult? Function(_PasswordEventChanged value)? onPasswordChange,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return onEmailChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailEventChanged value)? onEmailChange,
    TResult Function(_PasswordEventChanged value)? onPasswordChange,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (onEmailChange != null) {
      return onEmailChange(this);
    }
    return orElse();
  }
}

abstract class _EmailEventChanged implements LoginEvent {
  factory _EmailEventChanged({required final String email}) =
      _$_EmailEventChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailEventChangedCopyWith<_$_EmailEventChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordEventChangedCopyWith<$Res> {
  factory _$$_PasswordEventChangedCopyWith(_$_PasswordEventChanged value,
          $Res Function(_$_PasswordEventChanged) then) =
      __$$_PasswordEventChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordEventChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordEventChanged>
    implements _$$_PasswordEventChangedCopyWith<$Res> {
  __$$_PasswordEventChangedCopyWithImpl(_$_PasswordEventChanged _value,
      $Res Function(_$_PasswordEventChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordEventChanged(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordEventChanged implements _PasswordEventChanged {
  _$_PasswordEventChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onPasswordChange(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordEventChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordEventChangedCopyWith<_$_PasswordEventChanged> get copyWith =>
      __$$_PasswordEventChangedCopyWithImpl<_$_PasswordEventChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChange,
    required TResult Function(String password) onPasswordChange,
    required TResult Function() login,
  }) {
    return onPasswordChange(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onEmailChange,
    TResult? Function(String password)? onPasswordChange,
    TResult? Function()? login,
  }) {
    return onPasswordChange?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChange,
    TResult Function(String password)? onPasswordChange,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (onPasswordChange != null) {
      return onPasswordChange(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailEventChanged value) onEmailChange,
    required TResult Function(_PasswordEventChanged value) onPasswordChange,
    required TResult Function(_LoginEvent value) login,
  }) {
    return onPasswordChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailEventChanged value)? onEmailChange,
    TResult? Function(_PasswordEventChanged value)? onPasswordChange,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return onPasswordChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailEventChanged value)? onEmailChange,
    TResult Function(_PasswordEventChanged value)? onPasswordChange,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (onPasswordChange != null) {
      return onPasswordChange(this);
    }
    return orElse();
  }
}

abstract class _PasswordEventChanged implements LoginEvent {
  factory _PasswordEventChanged({required final String password}) =
      _$_PasswordEventChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordEventChangedCopyWith<_$_PasswordEventChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginEventCopyWith<$Res> {
  factory _$$_LoginEventCopyWith(
          _$_LoginEvent value, $Res Function(_$_LoginEvent) then) =
      __$$_LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEvent>
    implements _$$_LoginEventCopyWith<$Res> {
  __$$_LoginEventCopyWithImpl(
      _$_LoginEvent _value, $Res Function(_$_LoginEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginEvent implements _LoginEvent {
  _$_LoginEvent();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onEmailChange,
    required TResult Function(String password) onPasswordChange,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onEmailChange,
    TResult? Function(String password)? onPasswordChange,
    TResult? Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onEmailChange,
    TResult Function(String password)? onPasswordChange,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailEventChanged value) onEmailChange,
    required TResult Function(_PasswordEventChanged value) onPasswordChange,
    required TResult Function(_LoginEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailEventChanged value)? onEmailChange,
    TResult? Function(_PasswordEventChanged value)? onPasswordChange,
    TResult? Function(_LoginEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailEventChanged value)? onEmailChange,
    TResult Function(_PasswordEventChanged value)? onPasswordChange,
    TResult Function(_LoginEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements LoginEvent {
  factory _LoginEvent() = _$_LoginEvent;
}

/// @nodoc
mixin _$LoginState {
  bool get isLoginLoading => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isLoginError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {bool isLoginLoading,
      bool isEmailValid,
      bool isLoginError,
      String? errorMessage});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoginLoading = null,
    Object? isEmailValid = null,
    Object? isLoginError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginError: null == isLoginError
          ? _value.isLoginError
          : isLoginError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoginLoading,
      bool isEmailValid,
      bool isLoginError,
      String? errorMessage});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoginLoading = null,
    Object? isEmailValid = null,
    Object? isLoginError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      isLoginLoading: null == isLoginLoading
          ? _value.isLoginLoading
          : isLoginLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoginError: null == isLoginError
          ? _value.isLoginError
          : isLoginError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {this.isLoginLoading = false,
      this.isEmailValid = false,
      this.isLoginError = false,
      this.errorMessage});

  @override
  @JsonKey()
  final bool isLoginLoading;
  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isLoginError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState(isLoginLoading: $isLoginLoading, isEmailValid: $isEmailValid, isLoginError: $isLoginError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.isLoginLoading, isLoginLoading) ||
                other.isLoginLoading == isLoginLoading) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isLoginError, isLoginError) ||
                other.isLoginError == isLoginError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoginLoading, isEmailValid, isLoginError, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {final bool isLoginLoading,
      final bool isEmailValid,
      final bool isLoginError,
      final String? errorMessage}) = _$_LoginState;

  @override
  bool get isLoginLoading;
  @override
  bool get isEmailValid;
  @override
  bool get isLoginError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
