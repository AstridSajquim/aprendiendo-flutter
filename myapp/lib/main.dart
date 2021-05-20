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
  HomePage createState() => HomePage();
}

bool _suscrito = false;

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
                  color: Color(0xffC82633),
                  textColor: Color(0xffffffff),
                  child: Text("Suscribirme al canal",
                      style: TextStyle(fontSize: 20.0)),
                  onPressed: () {
                    showAlert(context);
                  }),
              SizedBox(
                height: 100.0,
              ),
              Text(
                _suscrito ? "Subscrito" : "No subscrito",
                style: TextStyle(fontSize: 20.0),
              )
            ],
          ),
        ));
  }

  void showAlert(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
              title: Text("Suscribirse"),
              content: Text("are you sure?"),
              actions: [
                TextButton(
                    onPressed: () {
                      print("cancel");
                      Navigator.pop(context);
                    },
                    child: Text("cancel")),
                TextButton(
                  child: Text("yas"),
                  onPressed: () {
                    print("yas");
                    setState(() {
                      _suscrito = true;
                    });
                    Navigator.pop(context);
                  },
                )
              ],
            ));
  }
}
