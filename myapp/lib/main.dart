import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  _MiApp createState() => _MiApp();
}

class _MiApp extends State<MiApp> {
  Empresa _facebook = new Empresa("facebook", "Mark", 10000);
  Empresa _google = new Empresa("google", "Larry", 8000000);

  @override
  void initState() {
    super.initState();
    print(_facebook.nombre);
    print(_facebook.propietario);
    print(_facebook.ingresoAnual);
  }

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
            _google.ingresoAnual.toString(),
            style: TextStyle(fontSize: 24),
          )),
        ),
      ),
    );
  }
}

class Empresa {
  String nombre;
  String propietario;
  int ingresoAnual;

  Empresa(String nombre, String propietario, int ingreso) {
    this.nombre = nombre;
    this.propietario = propietario;
    this.ingresoAnual = ingreso;
  }
}
