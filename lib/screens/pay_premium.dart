import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';
import 'package:ibzer_bizart/helpers/constants.dart';

import '../main.dart';
import 'home.dart';
import 'login.dart';

class PayPremium extends StatefulWidget {
  final String email;

  const PayPremium({Key key, this.email}) : super(key: key);

  @override
  _PayPremiumState createState() => _PayPremiumState();
}

// Pay public key
class _PayPremiumState extends State<PayPremium> {
  bool checkedValue = false;
  final plugin = PaystackPlugin();
  final String publicKey = "pk_test_24d274e8118113d38f28ad822cc54ad5c02c0875";

  double lat, long;

  @override
  void initState() {
    plugin.initialize(publicKey: publicKey);
    super.initState();
  }

  Dialog successDialog(context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)), //this right here
      child: Container(
        height: 350.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_box,
                color: Colors.red,
                size: 90,
              ),
              SizedBox(height: 15),
              Text(
                'Payment has successfully',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'been made',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Your payment has been successfully",
                style: TextStyle(fontSize: 13),
              ),
              Text("processed.", style: TextStyle(fontSize: 13)),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    // flutter defined function

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return successDialog(context);
      },
    );
  }

  showCompleteDialog(BuildContext context) {
    // set up the buttons
    Widget continueButton = FlatButton(
      child: Text("Okay"),
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Transaction Successful"),
      content: Container(
        height: 350.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_box,
                color: Colors.red,
                size: 90,
              ),
              SizedBox(height: 15),
              Text(
                'Payment has successfully',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'been made',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Your payment has been successfully",
                style: TextStyle(fontSize: 13),
              ),
              Text("processed.", style: TextStyle(fontSize: 13)),
            ],
          ),
        ),
      ),
      actions: [
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Dialog errorDialog(context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)), //this right here
      child: Container(
        height: 350.0,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cancel,
                color: Colors.red,
                size: 90,
              ),
              SizedBox(height: 15),
              Text(
                'Failed to process payment',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                "Error in processing payment, please try again",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showErrorDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return errorDialog(context);
      },
    );
  }

  String _getReference() {
    String platform;
    if (Platform.isIOS) {
      platform = 'iOS';
    } else {
      platform = 'Android';
    }
    return 'ChargedFrom${platform}_${DateTime.now().millisecondsSinceEpoch}';
  }

  chargeCard(int amount, String email) async {
    Charge charge = Charge()
      ..amount = amount * 100
      ..reference = _getReference()
      // or ..accessCode = _getAccessCodeFrmInitialization()
      ..email = email;
    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card, // Defaults to CheckoutMethod.selectable
      charge: charge,
    );
    if (response.status == true) {
      DocumentReference _docRef = ordersRef.doc();
      await _docRef.set({
        'ownerId': authId.userId,
        'orderId': _docRef.id,
        'timestamp': timestamp,
        'price': amount,
      }).then((value) async {
        await usersRef.doc(authId.userId).update({'isPremium': true});
      });
      showCompleteDialog(context);
    } else {
      _showErrorDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Become a Premium User",
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Card(
              elevation: 10.0,
              color: Colors.white,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        "Want to read more books?\n Subscribe to be a premium user \n @ N5000 yearly",
                        style: kSubheadingextStyle),
                    Center(
                      child: PrimaryButton(
                        height: 45.0,
                        width: double.infinity,
                        color: Colors.green,
                        buttonTitle: ' Continue',
                        blurRadius: 7.0,
                        roundedEdge: 2.5,
                        onTap: () async {
                          chargeCard(5000, widget.email);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
