import 'package:flutter/cupertino.dart';

import '../model/home_model.dart';

class HomeProvider extends ChangeNotifier
{
  List<product_model> ProductList= [
    product_model(addproduct: "Kiwi",price: "120",quantity: 1,  image: "🥝"),
    product_model(addproduct: "Strabwrry",price: "150",quantity: 1,image: "🍓"),
    product_model(addproduct: "Mango",price: "1000",quantity: 1 ,image: "🥭"),
    product_model(addproduct: "Pineapple",price: "200",quantity: 1,image:"🍍" ),
    product_model(addproduct: "Watermelon",price: "150",quantity: 1,image: "🍊"),
    product_model(addproduct: "Lemon",price: "50",quantity: 1,image: "🍋"),
    product_model(addproduct: "Melon",price: "120",quantity: 1,image: "🍈"),
    product_model(addproduct: "Apple",price: "130",quantity: 1,image: "🍎"),
    product_model(addproduct: "Grapes",price: "100",quantity: 1,image: "🍇 "),
    product_model(addproduct: "Banana",price: "20",quantity: 1,image:"🍌"),
    product_model(addproduct: "Green Apple",price: "20",quantity: 1,image:"🍏"),
    product_model(addproduct: "Cocount",price: "20",quantity: 1,image:"🥥"),
  ];
  List<product_model> Cart = [];

  void addtocart(product_model d1)
  {
    Cart.add(d1);
  }

  void increment_decrement(int index,product_model d1)
  {
    Cart[index] = d1;
    notifyListeners();
  }
}