import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {
                    print('Homepage');
                  },
                  icon: Icon(
                    Icons.graphic_eq_rounded,
                  ),
                  label: Text(
                    'Social',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
