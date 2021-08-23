import 'package:flutter/material.dart';
import 'package:ibzer_bizart/helpers/styles.dart';

class Activity3 extends StatefulWidget {
  final String bookName;
  const Activity3({Key key, this.bookName}) : super(key: key);

  @override
  _Activity3State createState() => _Activity3State();
}

class _Activity3State extends State<Activity3> {
  final ans1 = TextEditingController();
  final ans2 = TextEditingController();
  final ans3 = TextEditingController();
  final ans4 = TextEditingController();
  final ans5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.bookName}'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 1.5),
                  blurRadius: 3.0,
                  color: Colors.amber,
                ),
              ],
            ),
            child: Text(
              'LESSON: TALLY MARKS\nPage 13',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 30.0,
                height: 30.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                ),
                child: Image.asset(
                  'images/tally.png',
                  width: 30,
                  height: 30,
                ),
              ),
              Text(
                "Tally marks is equal to ",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Text(
                " 5",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          // Question 1

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1. How many tally marks makes 20?",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "=",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      '20',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Question 2

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2. How many tally marks makes 15?",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 45.0,
                    height: 45.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'images/tally.png',
                      width: 30,
                      height: 30,
                    )),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "=",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      '15',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "3. Joy Has   Musa Has",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "The tally marks \n altogether make",
                            style: TextStyle(color: Colors.black, fontSize: 11),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "=",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20),
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: ' ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              controller: ans1,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans1.text == '') {
                              } else if (ans1.text == '10') {
                                showRight(context);
                              } else {
                                showWrong(context);
                              }
                            },
                            icon: Icon(
                              Icons.send,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 1.5),
                  blurRadius: 3.0,
                  color: Colors.amber,
                ),
              ],
            ),
            child: Text(
              'Write the correct number of tally marks in the boxes',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          // Question 4

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "4 ",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                            width: 45.0,
                            height: 45.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "              =",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20),
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: ' ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              controller: ans2,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans2.text == '') {
                              } else if (ans2.text == '5') {
                                showRight(context);
                              } else {
                                showWrong(context);
                              }
                            },
                            icon: Icon(
                              Icons.send,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
// Question 5

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "5",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "      =",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20),
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: ' ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              controller: ans3,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans3.text == '') {
                              } else if (ans3.text == '15') {
                                showRight(context);
                              } else {
                                showWrong(context);
                              }
                            },
                            icon: Icon(
                              Icons.send,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
// Question 6

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "6 ",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'images/tally.png',
                              width: 30,
                              height: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "=",
                            style: TextStyle(color: Colors.black, fontSize: 25),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 20),
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: ' ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              controller: ans4,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans4.text == '') {
                              } else if (ans4.text == '20') {
                                showRight(context);
                              } else {
                                showWrong(context);
                              }
                            },
                            icon: Icon(
                              Icons.send,
                              size: 30,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeMenu {
  static const String logout = 'Activity';

  static const List<String> choices = <String>[logout];
}
