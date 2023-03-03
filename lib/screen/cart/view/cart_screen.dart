import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../home/model/home_model.dart';
import '../../home/provider/home_provider.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  HomeProvider ? d1;
  @override
  Widget build(BuildContext context) {
    d1 = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Cart Screen"),
          ),
          body: Consumer<HomeProvider>(
            builder: (context, value, child) => ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    "${d1!.Cart[index].image}",
                    style: TextStyle(fontSize: 25),
                  ),
                  title: Text("${d1!.Cart[index].addproduct}"),
                  subtitle: Text("${d1!.Cart[index].price}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          product_model mp1 = product_model(
                              addproduct: d1!.Cart[index].addproduct,
                              quantity: d1!.Cart[index].quantity! - 1,
                              image: d1!.Cart[index].image,
                              price: d1!.Cart[index].price);

                          d1!.increment_decrement(index, mp1);
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${d1!.Cart[index].quantity}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          product_model mp1 = product_model(
                              addproduct: d1!.Cart[index].addproduct,
                              quantity: d1!.Cart[index].quantity! + 1,
                              image: d1!.Cart[index].image,
                              price: d1!.Cart[index].price);
                          d1!.increment_decrement(index, mp1);
                        },
                        icon: Icon(
                          Icons.add,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: d1!.Cart.length,
            ),
          ),
      ),
    );
  }
}