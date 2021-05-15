import 'package:flutter/material.dart';
import 'package:myapp/pages/page2.dart';

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
          title: Text("Título"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home"),
              RaisedButton(
                  child: Text("cambiar página"),
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()))
                      })
            ],
          ),
        ));
  }
}
