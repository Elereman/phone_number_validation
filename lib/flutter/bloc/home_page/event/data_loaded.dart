import 'package:phone_number_validation/flutter/bloc/home_page/event.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';

class DataLoadedEvent implements HomePageEvent {
  final HomePageState _state;

  DataLoadedEvent(this._state);

  @override
  HomePageState reduce(HomePageState oldState) => _state;
}
