import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi app",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key key}) : super(key: key);
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AlertDialog"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                  child: Text("Click on me"),
                  onPressed: () {
                    showAlert(context);
                  }),
              SizedBox(
                height: 100.0,
              ),
              Text("Sí")
            ],
          ),
        ));
  }
}

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => new AlertDialog(
            title: Text("This is an alert"),
            content: Text("This is text alert"),
          ));
}
