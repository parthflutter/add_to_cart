import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../home/model/home_model.dart';
import '../../home/provider/home_provider.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    product_model d1 = ModalRoute.of(context)!.settings.arguments as product_model;
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Product"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            child: Text("${d1.image}",style: TextStyle(fontSize: 100),),
          ),
          SizedBox(height: 20,),
          Align(
            child: Text("${d1.addproduct}",style: TextStyle(fontSize: 20),),
          ),
          SizedBox(height: 5,),
          Align(
            child: Text("${d1.price}"),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
             product_model m1 = product_model (
                price: d1.price,
                image: d1.image,
                quantity: d1.quantity,
                addproduct: d1.addproduct);
            Provider.of<HomeProvider>(context,listen: false).addtocart(m1);
          }, child: Text("Add to cart"),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade900),),
        ],
      ),
    ),
    );
  }
}
