import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: "Clases",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Clases"),
          ),
          body: Center(
            child: Text(
              "hola",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ),
    );
  }
}
