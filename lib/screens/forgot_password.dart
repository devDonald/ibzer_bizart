import 'package:flutter/material.dart';
import 'package:ibzer_bizart/helpers/firestore_service.dart';
import 'package:ibzer_bizart/screens/password_reset.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'login.dart';

class ForgotPassword extends StatefulWidget {
  static const String id = 'ForgotPassword';
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final AuthService _authService = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String error = '';
  ProgressDialog pr;

  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context);
    pr.style(message: 'Please wait, Resetting Password');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Reset Password",
        ),
        centerTitle: false,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 39.8,
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        AbasuText(
                          fontSize: 35.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 82.5,
                  ),
                  AuthTextFeildLabel(
                    label: 'Email',
                  ),
                  SizedBox(
                    height: 4.6,
                  ),
                  AuthTextField(
                    formField: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          bottom: 5,
                        ),
                        border: InputBorder.none,
                      ),
                      validator: (val) =>
                          val.isEmpty ? 'Enter Email Address' : null,
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  PrimaryButton(
                      color: Colors.green,
                      buttonTitle: 'Reset Password',
                      blurRadius: 7.0,
                      roundedEdge: 2.5,
                      height: 50,
                      onTap: () {
                        setState(() async {
                          if (_formKey.currentState.validate()) {
                            setState(() => pr.show());
                            try {
                              await _authService.resetPassword(email);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ResetPassword(email: email),
                                  ));
                            } catch (e) {
                              error = e.toString();
                            }
                          }
                        });
                      }),
                  SizedBox(
                    height: 23.5,
                  ),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AbasuText extends StatelessWidget {
  const AbasuText({
    Key key,
    this.fontSize,
  }) : super(key: key);
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: 'KOREX',
          style: TextStyle(
            color: Colors.green,
            fontSize: fontSize,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'Aqualinks',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: fontSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
