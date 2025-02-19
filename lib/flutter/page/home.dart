import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:phone_number_validation/back_bone/bloc_status.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/bloc.dart';
import 'package:phone_number_validation/flutter/bloc/home_page/state.dart';

class HomePage extends StatefulWidget {
  final HomePageBloc bloc;

  const HomePage({@required this.bloc, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(onTextChanged);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void onTextChanged() {
    widget.bloc.validatePhoneNumber(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Spacer(),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: CupertinoTextField(
              controller: _controller,
              suffixMode: OverlayVisibilityMode.editing,
              suffix: GestureDetector(
                onTap: () {
                  setState(() {
                    _controller.clear();
                  });
                },
                child: const Icon(
                  CupertinoIcons.clear_circled_solid,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
              inputFormatters: <MaskTextInputFormatter>[
                MaskTextInputFormatter(mask: '(###) ###-####'),
              ],
              keyboardType: TextInputType.phone,
              cursorColor: CupertinoColors.inactiveGray,
              cursorWidth: 1.5,
              placeholder: '(201) 555-0123',
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: CupertinoColors.inactiveGray,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Enter your phone number',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: CupertinoColors.inactiveGray,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                StreamBuilder<HomePageState>(
                    stream: widget.bloc.stateStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<HomePageState> snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(
                          child: CupertinoActivityIndicator(
                            animating: true,
                            radius: 20,
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return const Icon(
                          CupertinoIcons.arrow_right_circle_fill,
                          size: 60,
                          color: CupertinoColors.systemRed,
                        );
                      } else {
                        final HomePageState state = snapshot.data;

                        if (state.status == BlocStatus.Loading) {
                          return const Center(
                            child: CupertinoActivityIndicator(
                              animating: true,
                              radius: 20,
                            ),
                          );
                        } else if (state.status == BlocStatus.Error) {
                          return const Icon(
                            CupertinoIcons.arrow_right_circle_fill,
                            size: 60,
                            color: CupertinoColors.systemRed,
                          );
                        } else {
                          if (state.isNumberValid) {
                            return GestureDetector(
                              onTap: () {
                                _showSuccessDialog(context);
                              },
                              child: const Icon(
                                CupertinoIcons.arrow_right_circle_fill,
                                size: 60,
                              ),
                            );
                          } else {
                            return const Icon(
                              CupertinoIcons.arrow_right_circle_fill,
                              size: 60,
                              color: CupertinoColors.inactiveGray,
                            );
                          }
                        }
                      }
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Number is valid'),
        actions: <Widget>[
          CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () async {
                Navigator.pop(context);
              },
              child: const Text('Ok')),
        ],
      ),
    );
  }
}
