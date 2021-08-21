import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ibzer_bizart/helpers/category.dart';
import 'package:ibzer_bizart/helpers/constants.dart';

import '../main.dart';
import 'load_pdf.dart';

final root = FirebaseFirestore.instance;

final usersRef = root.collection('users');
final feedRef = root.collection('feed');
final adminFeedRef = root.collection('adminFeed');
final usersFeedRef = root.collection('feed');
final requests = root.collection('artisanRequests');
final timestamp = DateTime.now().toUtc().toString();
final ordersRef = root.collection('premium');

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPremium = false;
  String _uid, email, name;

  void _getAdmin() {
    User _currentUser = FirebaseAuth.instance.currentUser;
    String authid = _currentUser.uid;

    root.collection('users').doc(authid).get().then((ds) {
      if (ds.exists) {
        if (mounted) {
          setState(() {
            isPremium = ds.data()['isPremium'];
            _uid = ds.data()['userId'];
            email = ds.data()['email'];
            name = ds.data()['name'];
          });
        }
      }
    });
  }

  @override
  void initState() {
    _getAdmin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.logout) {
        authId.signOutUser().then((value) {
          Navigator.pushNamedAndRemoveUntil(context, '/login', (r) => false);
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "My Books",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
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
        centerTitle: false,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Text("Hey $name,", style: kHeadingextStyle),
            Text("These are your school books", style: kSubheadingextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("icons/search.svg"),
                  SizedBox(width: 16),
                  Text(
                    "Search books",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFA0A5BD),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
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
                      PDFDocument doc = await PDFDocument.fromAsset(
                          'assets/nursery1maths.pdf');

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
                            'Teacher: ${books[index].teacher}',
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
