import 'package:phone_number_validation/back_bone/bloc_status.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/event.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';

class InitializeEvent implements HomePageEvent {
  @override
  HomePageState reduce(HomePageState oldState) => HomePageState(
        isNumberValid: false,
        status: BlocStatus.Loaded,
      );
}
