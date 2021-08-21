import 'package:cloud_firestore/cloud_firestore.dart';

class UsersModel {
  String userId, name, photo, address, gender, state, city, country;
  bool isAdmin, isPremium;
  String marital, phone, email, dob;

  UsersModel(
      {this.userId,
      this.name,
      this.photo,
      this.address,
      this.phone,
      this.email,
      this.marital,
      this.gender,
      this.dob,
      this.country,
      this.city,
      this.state,
      this.isPremium,
      this.isAdmin});

  toJson() {
    return {
      "userId": userId,
      "email": email,
      'name': name,
      'address': address,
      'gender': gender,
      'state': state,
      'phone': phone,
      'photo': photo,
      'city': city,
      'dob': dob,
      'isPremium': isPremium,
      'isAdmin': isAdmin,
      'marital': marital,
      'country': country,
    };
  }

  UsersModel.fromSnapshot(DocumentSnapshot snapshot) {
    this.userId = snapshot['userId'];
    this.name = snapshot['name'];
    this.email = snapshot['email'];
    this.address = snapshot['address'];
    this.phone = snapshot['phone'];
    this.gender = snapshot['gender'];
    this.state = snapshot['state'];
    this.city = snapshot['city'];
    this.photo = snapshot['photo'];
    this.isAdmin = snapshot['isAdmin'];
    this.marital = snapshot['marital'];
    this.dob = snapshot['dob'];
    this.isPremium = snapshot['isPremium'];
    this.country = snapshot['country'];
  }
}
