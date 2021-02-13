import 'package:flutter/material.dart';
import 'package:workshop/providers/Store.dart';
import 'package:workshop/views/Home/Burger/widgets/MenuBox.dart';
import 'package:provider/provider.dart';

class Burger extends StatefulWidget {
  static String routeName = "/burger";
  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  List catagory = [
    'Bun',
    'Cheese',
    'Rice',
    'Curry',
    'Vegetable',
    'Snack',
    'Drinks',
  ];
  List menus = [
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
    MenuBox(
      name: 'Bread',
      price: 5.00,
    ),
  ];
  Container ingredient(int price) {
    return Container(
      color: Colors.red,
      child: Consumer<Store>(
        builder: (context, value, child) => Text('${value.sumPrice}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        centerTitle: true,
        title: Text(
          'CREATE BUGER',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ingredient(2),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.cyan,
              // alignment: Alignment.center,
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagory.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '${catagory[index]}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: menus.length,
              itemBuilder: (context, index) {
                return menus[index];
              },
            ),
          )
        ],
      ),
    );
  }
}
