import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ibzer_bizart/helpers/constants.dart';
import 'package:ibzer_bizart/helpers/firestore_service.dart';
import 'package:ibzer_bizart/screens/user_model.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:provider/provider.dart';

import 'login.dart';

class Signup extends StatefulWidget {
  static const String id = 'Signup';

  const Signup({Key key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

var isLargeScreen = false;

class _SignupState extends State<Signup> {
  bool asArtisan;
  _SignupState({this.asArtisan});

  //final AuthService _authService = AuthService();
  bool loading = false;
  //final DialogService _dialogService = locator<DialogService>();
  ProgressDialog pr;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _dob = TextEditingController();
  final TextEditingController _address = TextEditingController();

  String selectedState, selectedGender, category;

  String error = '';

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthService>(context, listen: false);
    pr = new ProgressDialog(context);
    pr.style(message: 'Please wait, Creating new User');

    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    if (deviceHeight >= 800.0) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    if (deviceWidth >= 420.0) {
      isLargeScreen = true;
    } else {
      isLargeScreen = false;
    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              //height: deviceHeight,
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 72.1),
                        ScreenTitleIndicator(
                          title: 'Register',
                        ),
                        SizedBox(
                          height: 20.9,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AuthTextFeildLabel(
                                label: 'Full Name ',
                              ),
                              AuthTextField(
                                width: double.infinity,
                                formField: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _fullName,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                  keyboardType: TextInputType.name,
                                  textCapitalization: TextCapitalization.words,
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return 'Please enter your full name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AuthTextFeildLabel(
                                label: 'Email Address ',
                              ),
                              AuthTextField(
                                width: double.infinity,
                                formField: TextFormField(
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  controller: _email,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (val) => val.trim().isEmpty
                                      ? 'Enter Email Address'
                                      : !val.trim().contains('@') ||
                                              !val.trim().contains('.')
                                          ? 'enter a valid email address'
                                          : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'Password ',
                                    ),
                                    AuthTextField(
                                      width: MediaQuery.of(context).size.width /
                                              2.3 +
                                          1,
                                      formField: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _password,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                        obscureText: true,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return '8 or more characters';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'Retype Password ',
                                    ),
                                    AuthTextField(
                                      width: MediaQuery.of(context).size.width /
                                              2.3 +
                                          1,
                                      formField: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _confirmPassword,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please confirm password';
                                          } else if (value != _password.text) {
                                            return 'password mismatch';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // address

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AuthTextFeildLabel(
                                label: 'Home Address ',
                              ),
                              AuthTextField(
                                width: double.infinity,
                                formField: TextFormField(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    controller: _address,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                                    keyboardType: TextInputType.text,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return 'enter address';
                                      }
                                      return null;
                                    }),
                              ),
                            ],
                          ),
                        ),
                        // City and State
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'City ',
                                    ),
                                    AuthTextField(
                                      width: MediaQuery.of(context).size.width /
                                              2.3 +
                                          1,
                                      formField: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _city,
                                        textCapitalization:
                                            TextCapitalization.sentences,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'city cannot be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //State
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'State',
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                              2.3 +
                                          1,
                                      child: DropdownButtonFormField<String>(
                                        hint: Text('Select State'),
                                        value: selectedState,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 25.0,
                                        elevation: 0,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            selectedState = newValue;
                                            print(selectedState);
                                          });
                                        },
                                        items: states
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Date of Birth and Gender
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'Date of Birth ',
                                    ),
                                    AuthTextField(
                                      width: MediaQuery.of(context).size.width /
                                              2.3 +
                                          1,
                                      formField: TextFormField(
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _dob,
                                        keyboardType: TextInputType.datetime,
                                        textCapitalization:
                                            TextCapitalization.none,
                                        decoration: InputDecoration(
                                          hintText: 'DD-MM-YYYY',
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'D.O.B cannot be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //State
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    AuthTextFeildLabel(
                                      label: 'Gender',
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                      child: DropdownButtonFormField<String>(
                                        hint: Text('Select Gender'),
                                        value: selectedGender,
                                        icon: Icon(Icons.arrow_drop_down),
                                        iconSize: 25.0,
                                        elevation: 0,
                                        style: TextStyle(color: Colors.black),
                                        decoration: InputDecoration(),
                                        onChanged: (String newValue) {
                                          setState(() {
                                            selectedGender = newValue;
                                            print(selectedGender);
                                          });
                                        },
                                        items: gender
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //as an artisan

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AuthTextFeildLabel(
                                label: 'Phone Number ',
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    flex: 4,
                                    child: AuthTextField(
                                      formField: TextFormField(
                                        maxLength: 15,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _phoneNumber,
                                        decoration: InputDecoration(
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                          hintText: '+2348033422212',
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter phone number';
                                          }
                                          if (!value.startsWith('+234')) {
                                            return 'number must start with +234';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              PrimaryButton(
                                height: 45.0,
                                width: double.infinity,
                                color: Colors.green,
                                buttonTitle: 'Create an account',
                                blurRadius: 7.0,
                                roundedEdge: 2.5,
                                onTap: () async {
                                  if (_phoneNumber.text != '' &&
                                      _fullName.text != '' &&
                                      _email.text != '' &&
                                      _confirmPassword.text != '' &&
                                      _password.text != '') {
                                    if (_password.text ==
                                        _confirmPassword.text) {
                                      pr.show();
                                      UsersModel user = UsersModel(
                                          email: _email.text,
                                          phone: _phoneNumber.text,
                                          gender: selectedGender,
                                          country: 'Nigeria',
                                          isAdmin: false,
                                          state: selectedState,
                                          address: _address.text,
                                          city: _city.text,
                                          isPremium: false,
                                          dob: _dob.text,
                                          name: _fullName.text,
                                          photo: dummyProfilePic);
                                      await auth
                                          .createAccount(
                                              _email.text, _password.text, user)
                                          .then((value) async {
                                        pr.hide();

                                        Navigator.pushNamedAndRemoveUntil(
                                            context, '/home', (r) => false);
                                      }).catchError((onError) {});
                                    } else {
                                      setState(() {
                                        error = 'password mismatch';
                                      });
                                    }
                                  } else {
                                    setState(() {
                                      error = 'PLEASE COMPLETE ALL FIELDS';
                                    });
                                  }
                                },
                              ),
                              SizedBox(height: 25.0),
                              Center(
                                child: Text(
                                  error,
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Login(),
                                        ));
                                  },
                                  child: RichText(
                                    text: TextSpan(
                                      text: 'Have an Account? ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Nunito',
                                        fontSize: 15.0,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Login',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: 'Nunito',
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 23.5,
                              ),
                              Center(
                                child: Container(
                                  width: 288.0,
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text:
                                          'By creating an account you agree to BooksWorld',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Colors.black,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                setState(() {
                                                  Navigator.pushNamed(context,
                                                      '/termsOfService');
                                                });
                                              },
                                            text: 'Terms of Service ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                              fontSize: 13.0,
                                            )),
                                        TextSpan(text: 'and '),
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              setState(() {
                                                Navigator.pushNamed(context,
                                                    '/privacyAndPolicy');
                                              });
                                            },
                                          text: 'Privacy Policy. ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13.0,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
