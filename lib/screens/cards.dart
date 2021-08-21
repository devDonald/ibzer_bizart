import 'package:flutter/material.dart';

class ArtisanCard extends StatelessWidget {
  final String image, fullName, gender, experience, specialty, location;
  final bool isVerified;
  final Function onTap;

  const ArtisanCard({
    Key key,
    this.image,
    this.fullName,
    this.gender,
    this.experience,
    this.specialty,
    this.location,
    this.isVerified,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (screenSize.width - 20) / 2,
        height: 170.0,
        margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        padding: EdgeInsets.all(
          12.2,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 1.5),
              blurRadius: 3.0,
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              image,
              height: 120.0,
              width: 100.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    title: fullName,
                    icon: Icons.person,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: gender,
                    icon: Icons.anchor,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: experience,
                    icon: Icons.work,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: specialty,
                    icon: Icons.category,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: location,
                    icon: Icons.location_on,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  isVerified
                      ? RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyText1,
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Icon(
                                    Icons.assignment_turned_in_outlined,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: 'Verified',
                                  style: TextStyle(
                                      color: Colors.green,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        )
                      : RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyText1,
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Icon(
                                    Icons.assignment_turned_in_outlined,
                                    size: 16,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              TextSpan(
                                  text: 'Not Verified',
                                  style: TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextBody extends StatelessWidget {
  final String title;
  final IconData icon;

  const TextBody({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: Theme.of(context).textTheme.bodyText1,
        children: [
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Icon(
                icon,
                size: 16,
                color: Colors.green,
              ),
            ),
          ),
          TextSpan(text: title),
        ],
      ),
    );
  }
}

class HomeCard2 extends StatelessWidget {
  const HomeCard2({
    Key key,
    this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Function onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.390,
            height: MediaQuery.of(context).size.height * 0.200,
            margin:
                EdgeInsets.only(top: 17.5, bottom: 5.0, left: 7.0, right: 7.0),
            //padding: EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 2.5),
                  blurRadius: 10.5,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.green,
                      size: 50.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key key,
    this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);
  final IconData icon;
  final Function onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.285,
            height: 40,
            margin:
                EdgeInsets.only(top: 10.5, bottom: 5.0, left: 7.0, right: 7.0),
            //padding: EdgeInsets.only(left: 15.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 2.5),
                  blurRadius: 10.5,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.green,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Text(
            '$title',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final String image, fullName, gender, location;
  final Function onTap;

  const UserCard(
      {Key key,
      this.image,
      this.fullName,
      this.gender,
      this.location,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (screenSize.width - 20) / 2,
        height: 90.0,
        margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        padding: EdgeInsets.all(
          12.2,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 1.5),
              blurRadius: 3.0,
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              image,
              height: 100.0,
              width: 90.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    title: fullName,
                    icon: Icons.person,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: gender,
                    icon: Icons.anchor,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  TextBody(
                    title: location,
                    icon: Icons.location_on,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RequestedArtisanCard extends StatelessWidget {
  final String title, artisanName, status, timestamp;
  final bool hasAgreed;
  final Function onTap;

  const RequestedArtisanCard({
    Key key,
    this.title,
    this.artisanName,
    this.status,
    this.hasAgreed,
    this.onTap,
    this.timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (screenSize.width - 20) / 2,
        height: 100.0,
        margin: EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        padding: EdgeInsets.all(
          12.2,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.0, 1.5),
              blurRadius: 3.0,
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/request.png',
              height: 60.0,
              width: 60.0,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                        TextSpan(
                            text: title,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                        WidgetSpan(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: Text('Status: ',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold))),
                        ),
                        TextSpan(
                            text: status,
                            style: TextStyle(
                                backgroundColor: Colors.lightBlueAccent,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText1,
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(
                              'Artisan Name: ',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TextSpan(text: artisanName),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight, child: Text(timestamp)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
