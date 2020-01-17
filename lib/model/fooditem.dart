import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';

FooditemList fooditemList = FooditemList(foodItems: [
  FoodItem(
    id: 1,
    title: "Cheese Burger",
    hotel: "Hagwarts Cafe",
    price: 40.00,
    imgUrl:
        "https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/master/pass/Smashburger-recipe-120219.jpg",
  ),
  FoodItem(
    id: 2,
    title: " Burger",
    hotel: "Nafees Restaurant",
    price: 40.00,
    imgUrl:
        "https://i.kinja-img.com/gawker-media/image/upload/s--l6rS3nZj--/c_scale,f_auto,fl_progressive,q_80,w_800/vcwkkj2ayw6eez1rbwdt.jpg",
  ),
  FoodItem(
    id: 3,
    title: " Pizza ",
    hotel: "Dominos",
    price: 40.00,
    imgUrl:
        "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&w=1000&q=80",
  ),
  FoodItem(
    id: 4,
    title: "Masala Dosa",
    hotel: "Cafe Yolo",
    price: 40.00,
    imgUrl:
        "https://www.vegrecipesofindia.com/wp-content/uploads/2017/11/paper-masala-dosa-0.jpg",
  ),
  FoodItem(
    id: 5,
    title: "Idali Sambhar",
    hotel: "Anand Healthy Kitchen",
    price: 40.00,
    imgUrl: "https://craftlog.com/m/i/5428287=s1280=h960",
  ),
  FoodItem(
    id: 6,
    title: "Veg Rolls",
    hotel: "ROLLS",
    price: 40.00,
    imgUrl:
        "https://i1.wp.com/vegecravings.com/wp-content/uploads/2016/09/spring-roll-recipe-step-by-step-instructions.jpg?fit=3766%2C3024&ssl=1",
  ),
  FoodItem(
    id: 7,
    title: "Chocolate Shake",
    hotel: "Sassy House",
    price: 40.00,
    imgUrl:
        "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.southernliving.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2Fimage%2F2019%2F02%2Fmain%2Fsl_digi_012119053.jpg%3Fitok%3DghrQHR6w&w=450&c=sc&poi=face&q=85",
  ),
]);

class FooditemList {
  List<FoodItem> foodItems;

  FooditemList({@required this.foodItems});
}

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;

  FoodItem({
    @required this.id,
    @required this.title,
    @required this.hotel,
    @required this.price,
    @required this.imgUrl,
    this.quantity = 1,
  });

  void incrementQuantity() {
    this.quantity = this.quantity + 1;
  }

  void decrementQuantity() {
    this.quantity = this.quantity - 1;
  }
}
