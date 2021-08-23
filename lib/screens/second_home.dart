import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ibzer_bizart/helpers/category.dart';
import 'package:ibzer_bizart/helpers/constants.dart';
import 'package:ibzer_bizart/main.dart';

import 'load_pdf.dart';

class SecondHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.logout) {
        authId.signOutUser().then((value) {
          Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => false);
        });
      }
    }

    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      title: Text('My School Books'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        PopupMenuButton<String>(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
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
    );

    ///create book tile hero
    createTile(Book book) => Hero(
          tag: book.name,
          child: Material(
            elevation: 15.0,
            shadowColor: Colors.yellow.shade900,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${book.name}');
              },
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
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
                          await PDFDocument.fromAsset(books[index].link);

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
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(books[index].image),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0.0, 1.5),
                              blurRadius: 3.0,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            books[index].name,
                            style: kTitleTextStyle,
                          ),
                        ],
                      ),
                    ]),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMenu {
  static const String logout = 'Logout';

  static const List<String> choices = <String>[logout];
}
