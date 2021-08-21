import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class LoadPdf extends StatelessWidget {
  final PDFDocument document;
  final String bookName;
  const LoadPdf({Key key, this.document, this.bookName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.logout) {}
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
  static const String logout = 'Activity';

  static const List<String> choices = <String>[logout];
}
