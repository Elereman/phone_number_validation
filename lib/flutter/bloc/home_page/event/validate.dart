import 'package:phone_number_validation/back_bone/bloc_status.dart';
import 'package:phone_number_validation/domain/usecase/validate_phone_number.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event/data_loaded.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';

class ValidatePhoneNumberEvent implements HomePageEvent {
  final String _phoneNumber;
  final ValidatePhoneNumberUseCase _validatePhoneNumberUseCase;
  final Sink<HomePageEvent> _eventSink;

  ValidatePhoneNumberEvent(
    this._phoneNumber,
    this._validatePhoneNumberUseCase,
    this._eventSink,
  );

  @override
  HomePageState reduce(HomePageState oldState) {
    _validatePhoneNumberUseCase(_phoneNumber)
        .then(
          (bool result) => _eventSink.add(
            DataLoadedEvent(
              HomePageState(
                isNumberValid: result,
                status: BlocStatus.Loaded,
              ),
            ),
          ),
        )
        .catchError(
          (Object error) => _eventSink.add(
            DataLoadedEvent(
              HomePageState(
                isNumberValid: null,
                status: BlocStatus.Error,
                error: error,
              ),
            ),
          ),
        );

    return HomePageState(
      isNumberValid: oldState?.isNumberValid,
      status: BlocStatus.Loading,
    );
  }
}
