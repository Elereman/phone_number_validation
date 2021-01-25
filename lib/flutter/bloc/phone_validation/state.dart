part of 'bloc.dart';

@immutable
class PhoneValidationState {
  final bool isValid;
  final BlocStatus status;
  final Object error;

  const PhoneValidationState({
    @required this.isValid,
    @required this.status,
    this.error,
  });
}
