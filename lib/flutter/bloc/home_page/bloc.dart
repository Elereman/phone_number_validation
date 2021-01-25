import 'package:meta/meta.dart';
import 'package:phone_number_validation/domain/usecase/validate_phone_number.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event/initialize.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event/validate.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';
import 'package:rxdart/rxdart.dart';

class HomePageBloc {
  final BehaviorSubject<HomePageEvent> _eventSubject;
  final BehaviorSubject<HomePageState> _stateSubject;

  final ValidatePhoneNumberUseCase validatePhoneNumberUseCase;

  final int maxNumberLength;

  HomePageState _state;

  HomePageBloc({
    @required this.validatePhoneNumberUseCase,
    this.maxNumberLength = 14,
  })  : _stateSubject = BehaviorSubject<HomePageState>(),
        _eventSubject = BehaviorSubject<HomePageEvent>(),
        super() {
    _eventSubject.listen((HomePageEvent event) {
      _state = event.reduce(_state);
      _stateSubject.add(_state);
    });
    _eventSubject.add(InitializeEvent());
  }

  Stream<HomePageState> get stateStream => _stateSubject.stream;

  void validatePhoneNumber(String number) =>
      _eventSubject.add(ValidatePhoneNumberEvent(
        number,
        validatePhoneNumberUseCase,
        _eventSubject.sink,
      ));
}
