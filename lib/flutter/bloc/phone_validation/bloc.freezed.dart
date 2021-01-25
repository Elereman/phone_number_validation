// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PhoneValidationEventTearOff {
  const _$PhoneValidationEventTearOff();

// ignore: unused_element
  ValidatePhoneEvent validatePhone(@required String phone) {
    return ValidatePhoneEvent(
      phone,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PhoneValidationEvent = _$PhoneValidationEventTearOff();

/// @nodoc
mixin _$PhoneValidationEvent {
  String get phone;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult validatePhone(@required String phone),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult validatePhone(@required String phone),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult validatePhone(ValidatePhoneEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult validatePhone(ValidatePhoneEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PhoneValidationEventCopyWith<PhoneValidationEvent> get copyWith;
}

/// @nodoc
abstract class $PhoneValidationEventCopyWith<$Res> {
  factory $PhoneValidationEventCopyWith(PhoneValidationEvent value,
          $Res Function(PhoneValidationEvent) then) =
      _$PhoneValidationEventCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneValidationEventCopyWithImpl<$Res>
    implements $PhoneValidationEventCopyWith<$Res> {
  _$PhoneValidationEventCopyWithImpl(this._value, this._then);

  final PhoneValidationEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneValidationEvent) _then;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
abstract class $ValidatePhoneEventCopyWith<$Res>
    implements $PhoneValidationEventCopyWith<$Res> {
  factory $ValidatePhoneEventCopyWith(
          ValidatePhoneEvent value, $Res Function(ValidatePhoneEvent) then) =
      _$ValidatePhoneEventCopyWithImpl<$Res>;
  @override
  $Res call({String phone});
}

/// @nodoc
class _$ValidatePhoneEventCopyWithImpl<$Res>
    extends _$PhoneValidationEventCopyWithImpl<$Res>
    implements $ValidatePhoneEventCopyWith<$Res> {
  _$ValidatePhoneEventCopyWithImpl(
      ValidatePhoneEvent _value, $Res Function(ValidatePhoneEvent) _then)
      : super(_value, (v) => _then(v as ValidatePhoneEvent));

  @override
  ValidatePhoneEvent get _value => super._value as ValidatePhoneEvent;

  @override
  $Res call({
    Object phone = freezed,
  }) {
    return _then(ValidatePhoneEvent(
      phone == freezed ? _value.phone : phone as String,
    ));
  }
}

/// @nodoc
class _$ValidatePhoneEvent extends ValidatePhoneEvent {
  const _$ValidatePhoneEvent(@required this.phone)
      : assert(phone != null),
        super._();

  @override
  final String phone;

  @override
  String toString() {
    return 'PhoneValidationEvent.validatePhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ValidatePhoneEvent &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $ValidatePhoneEventCopyWith<ValidatePhoneEvent> get copyWith =>
      _$ValidatePhoneEventCopyWithImpl<ValidatePhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult validatePhone(@required String phone),
  }) {
    assert(validatePhone != null);
    return validatePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult validatePhone(@required String phone),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validatePhone != null) {
      return validatePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult validatePhone(ValidatePhoneEvent value),
  }) {
    assert(validatePhone != null);
    return validatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult validatePhone(ValidatePhoneEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validatePhone != null) {
      return validatePhone(this);
    }
    return orElse();
  }
}

abstract class ValidatePhoneEvent extends PhoneValidationEvent {
  const ValidatePhoneEvent._() : super._();
  const factory ValidatePhoneEvent(@required String phone) =
      _$ValidatePhoneEvent;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  $ValidatePhoneEventCopyWith<ValidatePhoneEvent> get copyWith;
}
