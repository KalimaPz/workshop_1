import 'package:flutter/material.dart';

class MenuBox extends StatefulWidget {
  final String name;
  final double price;
  MenuBox({Key key, this.name, this.price}) : super(key: key);

  @override
  _MenuBoxState createState() => _MenuBoxState();
}

class _MenuBoxState extends State<MenuBox> {
  int count = 0;

  void addOne() {
    setState(() {
      count++;
    });
  }

  void remOne() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${widget.name}'),
                  Text('\$${widget.price}'),
                ],
              )),
            ],
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 36,
                  height: 36,
                  child: RaisedButton(
                      child: Center(child: Text('-')),
                      onPressed: count == 0 ? null : remOne),
                  /*
                        if(count == 0 ) {
                          return null
                        } else {
                          remOne()
                        }
                       */
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('$count'),
                ),
                SizedBox(
                    width: 36,
                    height: 36,
                    child: RaisedButton(child: Text('+'), onPressed: addOne)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
