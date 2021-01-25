import 'package:flutter/cupertino.dart';
import 'package:phone_number_validation/back_bone/di.dart' as di;
import 'package:phone_number_validation/flutter/bloc/phone_validation/bloc.dart';
import 'package:phone_number_validation/flutter/page/home.dart';

void main() {
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone number validation',
      home: HomePage(
        bloc: di.sl.get<PhoneValidationBloc>(),
      ),
    );
  }
}
