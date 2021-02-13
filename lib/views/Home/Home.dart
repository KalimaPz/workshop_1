import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/providers/Store.dart';

import 'Burger/Burger.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<Store>(
          builder: (context, result, child) {
            return Column(
              children: [
                Text('$count'),
                Text('Hello World'),
                RaisedButton(
                    child: Text('Count'),
                    onPressed: () {
                      // Navigator.pushNamed(context, Burger.routeName);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ChangeNotifierProvider.value(value: null),
                          ));
                    }),
                // Text('${context.watch<Store>().sumPrice}'),
                Text('${result.sumPrice}'),
                RaisedButton(
                    child: Text('Count'),
                    onPressed: () {
                      // context.read<Store>().updateSum(5);
                      result.updateSum(10);
                    }),
              ],
            );
          },
        ),
      ),
    );
  }
}
