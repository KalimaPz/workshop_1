import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/views/Home/Burger/Burger.dart';

import 'providers/Store.dart';
import 'views/Home/Home.dart';

void main() {
  runApp(App());
}

// Stateless
// Stateful
class App extends StatefulWidget {
  const App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        Burger.routeName: (context) => Burger(),
      },
      home: MultiProvider(
        providers: [ChangeNotifierProvider<Store>(create: (_) => Store())],
        child: Home(),
      ),
    );
  }
}
