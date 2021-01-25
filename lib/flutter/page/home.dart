import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextFormField(
              cursorColor: Colors.grey,
              cursorWidth: 1.5,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  color: Colors.grey,
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
