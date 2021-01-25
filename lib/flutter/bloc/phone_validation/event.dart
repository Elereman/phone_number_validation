part of 'bloc.dart';

@immutable
@freezed
abstract class PhoneValidationEvent with _$PhoneValidationEvent {
  const PhoneValidationEvent._();

  const factory PhoneValidationEvent.validatePhone(String phone) =
      ValidatePhoneEvent;
}
