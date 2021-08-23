import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:ibzer_bizart/screens/student_activity.dart';

import 'activity2.dart';
import 'activity3.dart';

class LoadPdf extends StatelessWidget {
  final PDFDocument document;
  final String bookName;
  const LoadPdf({Key key, this.document, this.bookName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.act1) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Activity1(
                bookName: bookName,
              ),
            ));
      } else if (choice == HomeMenu.act2) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Activity2(
                bookName: bookName,
              ),
            ));
      } else if (choice == HomeMenu.act3) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Activity3(
                bookName: bookName,
              ),
            ));
      } else if (choice == HomeMenu.act4) {
      } else if (choice == HomeMenu.act5) {}
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$bookName'),
        actions: <Widget>[
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            tooltip: 'options',
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return HomeMenu.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}

class HomeMenu {
  static const String act1 = 'Activity 1';
  static const String act2 = 'Activity 2';
  static const String act3 = 'Activity 3';
  static const String act4 = 'Activity 4';
  static const String act5 = 'Activity 5';

  static const List<String> choices = <String>[act1, act2, act3, act4, act5];
}
