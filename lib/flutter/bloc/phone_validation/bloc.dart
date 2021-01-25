import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:phone_number_validation/back_bone/bloc_status.dart';
import 'package:phone_number_validation/domain/usecase/validate_phone_number.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class PhoneValidationBloc
    extends Bloc<PhoneValidationEvent, PhoneValidationState> {
  PhoneValidationBloc(this._validatePhoneNumberUseCase)
      : super(const PhoneValidationState(
            isValid: false, status: BlocStatus.Loaded));

  final ValidatePhoneNumberUseCase _validatePhoneNumberUseCase;

  @override
  Stream<PhoneValidationState> mapEventToState(
    PhoneValidationEvent event,
  ) =>
      event.when<Stream<PhoneValidationState>>(validatePhone: _validatePhone);

  Stream<PhoneValidationState> _validatePhone(String number) async* {
    yield await _validatePhoneNumberUseCase(number)
        .then<PhoneValidationState>((bool result) => PhoneValidationState(
              isValid: result,
              status: BlocStatus.Loaded,
            ))
        .catchError((Object error) => PhoneValidationState(
              isValid: null,
              status: BlocStatus.Error,
              error: error,
            ));
  }
}
