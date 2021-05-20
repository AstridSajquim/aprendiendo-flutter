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
                  child: Text(
                      _suscrito ? "Cancelar Suscripción" : "Suscribirme",
                      style: TextStyle(fontSize: 20.0)),
                  onPressed: () {
                    showAlert(context);
                  }),
              SizedBox(
                height: 100.0,
              ),
              Text(
                _suscrito ? "Suscrito" : "No suscrito",
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
              title: Text(_suscrito ? "Cancelar Suscripción" : "Suscribirme",
                  style: TextStyle(fontSize: 20.0)),
              content: Text("¿Está seguro?"),
              actions: [
                TextButton(
                    onPressed: () {
                      print("Cancelar");
                      setState(() {
                        _suscrito = !_suscrito;
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Cancelar")),
                TextButton(
                  child: Text("Sí"),
                  onPressed: () {
                    print("Sí");
                    setState(() {
                      _suscrito = !_suscrito;
                    });
                    Navigator.pop(context);
                  },
                )
              ],
            ));
  }
}
