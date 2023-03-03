import 'package:add_to_cart/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  HomeProvider? d1;
  @override
  Widget build(BuildContext context) {
    d1 = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
          actions: [
          IconButton(onPressed: () {
    Navigator.pushNamed(context, 'home2');
    }, icon: Icon(Icons.shopping_cart),)
        ],
        title: Text("Add Cart"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'home1',arguments: d1!.ProductList[index]);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue.shade50,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${d1!.ProductList[index].image}",style: TextStyle(fontSize: 50),),
                    SizedBox(height: 20,),
                    Text("${d1!.ProductList[index].addproduct}",style: TextStyle(fontSize: 20),),
                    SizedBox(height: 10,),
                    Text("${d1!.ProductList[index].price}",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ),
            );
          },
          itemCount: d1!.ProductList.length,),
    ),
    );
  }
}

