import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool obscure = true;
  String mail = '', username = '', password = '';
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height*0.2,
          ),
          alignment: AlignmentDirectional.center,
          child: Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width*0.3,
            ),
            decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () {
                    print('Homepage');
                  },
                  icon: Icon(
                    Icons.graphic_eq_rounded,
                    size: 30,
                  ),
                  label: Text(
                    'Social',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(page == 0 ? Colors.green : Colors.greenAccent),
                      ),
                      child: Text(
                        'Login',
                      ),
                      onPressed: () {
                        setState(() {
                          page = 0;
                        });
                      },
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(page != 0 ? Colors.green : Colors.greenAccent),
                      ),
                      child: Text(
                        'Sign Up',
                      ),
                      onPressed: () {
                        setState(() {
                          page = 1;
                        });
                      },
                    ),
                  ],
                ),
                page != 0 ? SizedBox(
                  height: 10,
                ) : Container(),
                page != 0 ? TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail_outline,
                      color: Colors.black,
                    ),
                    labelText: 'Mail',
                    suffix: GestureDetector(
                      onTap: () {
                        mail != '' ? print('Send OTP') : print('Enter mail');
                      },
                      child: Text(
                        'Verify',
                      ),
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      mail = val;
                    });
                  },
                ) : Container(),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                    ),
                    labelText: 'Username',
                  ),
                  onChanged: (val) {
                    setState(() {
                      username = val;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.security_outlined,
                        color: Colors.black,
                      ),
                      labelText: 'Password',
                      suffix: GestureDetector(
                        child: Icon(
                          obscure ? Icons.lock_open_outlined : Icons.lock_outline_rounded,
                          color: Colors.black,
                          size: 16,
                        ),
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                      )
                  ),
                  obscureText: obscure ? true : false,
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    print('next');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: Text(
                    'Proceed',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
