import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ibzer_bizart/helpers/category.dart';
import 'package:ibzer_bizart/helpers/constants.dart';

import 'load_pdf.dart';

class AllBooks extends StatefulWidget {
  final String category;
  AllBooks({Key key, this.category}) : super(key: key);

  @override
  _AllBooksState createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Flexible(
                          flex: 2,
                          child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.of(context).pop();
                              })),
                      Flexible(
                        flex: 8,
                        child: Text(
                          'Premium Books',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(70),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(0, 2.5),
              ),
            ],
          ),
          child: StaggeredGridView.countBuilder(
            padding: EdgeInsets.all(0),
            crossAxisCount: 2,
            itemCount: books.length,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  PDFDocument doc =
                      await PDFDocument.fromAsset('assets/test.pdf');

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoadPdf(
                          document: doc,
                          bookName: books[index].name,
                        ),
                      ));
                },
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(books[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        books[index].name,
                        style: kTitleTextStyle,
                      ),
                      Text(
                        'Price: premium',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                        ),
                      )
                    ],
                  ),
                ]),
              );
            },
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ));
  }
}
