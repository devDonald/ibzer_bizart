import 'package:flutter/material.dart';
import 'package:ibzer_bizart/helpers/styles.dart';

class Activity2 extends StatefulWidget {
  final String bookName;
  const Activity2({Key key, this.bookName}) : super(key: key);

  @override
  _Activity2State createState() => _Activity2State();
}

class _Activity2State extends State<Activity2> {
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
              'Identifying Colours and Counting Objects \n Page 10',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          // Question 1

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1. How many Apples are here?",
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/apple.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/apple.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/ball.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/apple.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/ball.png',
                            width: 30,
                            height: 30,
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/ball.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/bird.jpg',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/ball.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/ball.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
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
                              controller: ans1,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans1.text == '') {
                              } else if (ans1.text == '3') {
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

          // Question 2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "2. How many triangles are here?",
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.pink,
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.pink,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Image.asset(
                            'images/triangle.png',
                            width: 30,
                            height: 30,
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
                              controller: ans2,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              if (ans2.text == '') {
                              } else if (ans2.text == '6') {
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
              "3. How many red houses are here?",
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
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
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                          ),
                          child: Icon(
                            Icons.house,
                            color: Colors.red,
                            size: 30,
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
