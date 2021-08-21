import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ibzer_bizart/screens/user_model.dart';

class AuthService extends ChangeNotifier {
  FirebaseFirestore _db = FirebaseFirestore.instance;
  final DateTime timestamp = DateTime.now();
  final usersRef = FirebaseFirestore.instance.collection('users');
  String userId;
  bool isPremium = false;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  UsersModel _userFromFirebaseUser(User user) {
    if (user != null) {
      userId = user.uid;
      return UsersModel(userId: user.uid, email: user.email);
    } else {
      return null;
    }
  }

  Future<void> addUser(UsersModel user) {
    return _db.collection('users').doc(user.userId).set(user.toJson());
  }

  Future<UsersModel> fetchUser(String userId) {
    return _db
        .collection('users')
        .doc(userId)
        .get()
        .then((snapshot) => UsersModel.fromSnapshot(snapshot));
  }

  Future signInUserWithEmailAndPassword(String email, String password) async {
    try {
      final result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      Fluttertoast.showToast(
          msg: "Login successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          fontSize: 16.0);
      //await _populateCurrentUser(result.user);

      return _userFromFirebaseUser(user);
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Login Failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return null;
    }
  }

  //Sign in with google

  Future createAccount(
      String email, String password, UsersModel userModel) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User user = result.user;
      userModel.userId = user.uid;

      usersRef.doc(user.uid).set(userModel.toJson());

      return _userFromFirebaseUser(user);
    } catch (e) {
      return null;
    }
  }

  Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email).then((_) {
      Fluttertoast.showToast(
          msg: "Password Reset successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
    }).catchError((error) {
      Fluttertoast.showToast(
          msg: "Password Reset Failed, Please input correct email",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });
  }

  //Sign out a current user from Firebase, google and facebook.
  Future<Null> signOutUser() async {
    try {
      // Sign out with firebase
      await _auth.signOut().then((value) async {
        Fluttertoast.showToast(
            msg: "Logged out successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      });
      // Sign out with google

    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future<String> signInwithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final result = await _auth.signInWithCredential(credential);
      User user = result.user;
      userId = user.uid;
      await _db.collection('users').doc(user.uid).set({
        'email': user.email,
        'phone': user.phoneNumber,
        'gender': '',
        'country': '',
        'isAdmin': false,
        'state': '',
        'address': '',
        'city': '',
        'isPremium': false,
        'dob': '',
        'name': user.displayName,
        'photo': user.photoURL
      });

      notifyListeners();
      return userId;
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }

  Future<void> signOutFromGoogle() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
