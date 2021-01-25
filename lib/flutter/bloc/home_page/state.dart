import 'package:meta/meta.dart';
import 'package:phone_number_validation/back_bone/bloc_status.dart';

class HomePageState {
  final bool isNumberValid;
  final BlocStatus status;
  final Object error;

  HomePageState({
    @required this.isNumberValid,
    @required this.status,
    this.error,
  });
}
