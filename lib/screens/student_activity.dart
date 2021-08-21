import 'package:flutter/material.dart';

class LoadPdf extends StatelessWidget {
  final String bookName;
  const LoadPdf({Key key, this.bookName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.logout) {}
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$bookName'),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class HomeMenu {
  static const String logout = 'Activity';

  static const List<String> choices = <String>[logout];
}
