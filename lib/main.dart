import 'package:flutter/cupertino.dart';
import 'package:phone_number_validation/domain/usecase/validate_phone_number.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/bloc.dart';
import 'package:phone_number_validation/flutter/page/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(
        bloc: HomePageBloc(
          validatePhoneNumberUseCase: DefaultValidatePhoneNumberUseCase(),
        ),
      ),
    );
  }
}
