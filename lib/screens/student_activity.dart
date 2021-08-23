import 'package:flutter/material.dart';
import 'package:ibzer_bizart/helpers/styles.dart';

class Activity1 extends StatefulWidget {
  final String bookName;
  const Activity1({Key key, this.bookName}) : super(key: key);

  @override
  _Activity1State createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  final ans1 = TextEditingController();
  final ans2 = TextEditingController();
  final ans3 = TextEditingController();
  final ans4 = TextEditingController();
  final ans5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void choiceAction(String choice) {
      if (choice == HomeMenu.logout) {}
    }

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
              'Count 1 - 20 by colour Count and write the number of dots in the box \n Page 9',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Example",
              style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.green,
                  fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "How many red dots are here?",
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
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 45.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
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
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Question 1

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1. How many blue dots are here?",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
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
                IconButton(
                    onPressed: () {
                      if (ans1.text == '') {
                      } else if (ans1.text == '4') {
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
            ),
          ),

          // Question 2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2. How many black dots are here?",
              style: TextStyle(color: Colors.black, fontSize: 18),
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
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "=",
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
                          child: Center(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              style: TextStyle(fontSize: 18),
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
                              } else if (ans2.text == '9') {
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

          // Question 3

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "3. How many green dots are here?",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  decoration: new BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 50,
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
                IconButton(
                    onPressed: () {
                      if (ans3.text == '') {
                      } else if (ans3.text == '4') {
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
            ),
          ),

          // Question 4

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "4. How many yellow dots are here?",
              style: TextStyle(color: Colors.black, fontSize: 18),
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
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
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
                              } else if (ans4.text == '10') {
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
            child: Text(
              "5. How many red dots are here?",
              style: TextStyle(color: Colors.black, fontSize: 18),
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
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: new BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
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
                              controller: ans5,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans5.text == '') {
                              } else if (ans5.text == '8') {
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
