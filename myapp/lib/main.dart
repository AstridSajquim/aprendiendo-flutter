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
      body: cuerpo(),
    );
  }
}

Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://www.grupoarco.com.mx/wp-content/uploads/fondo-amarillo-300x118.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          nombre(),
          usuario(),
          password(),
          SizedBox(
            height: 10.0,
          ),
          boton()
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text(
    "Ingrese sus datos",
    style: TextStyle(
        color: Colors.brown, fontSize: 35.0, fontWeight: FontWeight.bold),
  );
}

Widget usuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: TextField(
      decoration: InputDecoration(
          hintText: "User", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Password", fillColor: Colors.white, filled: true),
    ),
  );
}

Widget boton() {
  return FlatButton(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 10.0),
      onPressed: () {},
      child: Text(
        "Ok",
        style: TextStyle(fontSize: 25.0, color: Colors.brown),
      ));
}
