import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class crudMethods {
  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser() != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> addData(restaurantData) async {
    if (isLoggedIn()) {
      Firestore.instance
          .collection('RestaurantData')
          .add(restaurantData)
          .catchError((e) {
        print(e);
      });
    } else {
      print('You need to logged in');
    }
  }
}
