import 'package:flutter/material.dart';

String dummyProfilePic = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6TaCLCqU4K0ieF27ayjl51NmitWaJAh_X0r1rLX4gMvOe0MDaYw&s';
List<String> gender = ['Male', 'Female'];
List<String> country = ['Nigeria'];
List<String> states = [ 'Adamawa', 'Akwa Ibom',
                        'Anambra',
                        'Bauchi',
                        'Bayelsa',
                        'Benue',
                        'Borno',
                        'Cross River',
                        'Delta',
                        'Ebonyi',
                        'Edo',
                        'Ekiti',
                        'Enugu',
                        'Gombe',
                        'Imo',
                        'Jigawa',
                        'Kaduna',
                        'Kano',
                        'Katsina',
                        'Kebbi',
                       ' Kogi',
                        'Kwara',
                        'Lagos',
                        'Nasarawa',
                        'Niger',
                        'Ogun',
                        'Ondo',
                        'Osun',
                        'Oyo',
                        'Plateau',
                        'Rivers',
                        'Sokoto',
                        'Taraba',
                        'Yobe',
                        'Zamfara'
                        ];

 List<String> artisanCategory = ['Aquaculture', 'Fishery', 'Poultry', 'Hatching'];


class BuyButton extends StatelessWidget {
  const BuyButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.4,
      height: 30.4,
      margin: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        bottom: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 15.0,
            color: Colors.red,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrackButton extends StatelessWidget {
  const TrackButton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.4,
      height: 20.0,
      margin: EdgeInsets.only(
        left: 15.0,
        right: 15.0,
        bottom: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 15.0,
            color: Colors.red,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Track',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Constants{
  Constants._();
  static const double padding =10;
  static const double avatarRadius =45;
}

const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFFFFD073);
const kGreenColor = Color(0xFF49CC96);

// My Text Styles
const kHeadingextStyle = TextStyle(
  fontSize: 28,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);
const kSubheadingextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF61688B),
  height: 2,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

const kSubtitleTextSyule = TextStyle(
  fontSize: 18,
  color: kTextColor,
  // fontWeight: FontWeight.bold,
);
