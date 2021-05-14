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
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MiApp"),
        ),
        body: Center(
          child: RaisedButton(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.access_time),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "hola",
                  textAlign: TextAlign.center,
                )
              ],
            ),
            onPressed: () {
              var t = DateTime.now();
              print(t);
            },
          ),
        ));
  }
}
