import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';

abstract class HomePageEvent {
  HomePageState reduce(HomePageState oldState);
}
