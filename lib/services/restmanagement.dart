import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
class RestaurantManagement {
  storeNewRestaurant(user, context) {
    Firestore.instance.collection('Restaurant').add({
      'email': user.email,
       'uid': user.uid
    }).then((value) {
     Navigator.of(context).pop();
     Navigator.of(context).pushReplacementNamed('/resthome');
    }).catchError((e) {
          print(e);
        });
  }
}
