import 'package:get_it/get_it.dart';
import 'package:phone_number_validation/domain/usecase/validate_phone_number.dart';
import 'package:phone_number_validation/flutter/bloc/phone_validation/bloc.dart';

final GetIt sl = GetIt.instance;

void init() {
  sl.registerSingleton<ValidatePhoneNumberUseCase>(
      DefaultValidatePhoneNumberUseCase());
  sl.registerSingleton<PhoneValidationBloc>(PhoneValidationBloc(
    sl.get<ValidatePhoneNumberUseCase>(),
  ));
}
