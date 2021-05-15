import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Términos y condiciones"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Términos y condiciones",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Cupcake ipsum dolor sit. Amet croissant candy. I love ice cream soufflé powder. Pastry brownie pudding. Pudding candy I love marshmallow pie powder bonbon tootsie roll. Marzipan powder cupcake I love jujubes bonbon wafer dessert ice cream. Carrot cake danish fruitcake macaroon. Pastry candy canes gummies I love chocolate halvah dragée. Jelly-o tart cupcake tiramisu oat cake liquorice cake toffee brownie.",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Cupcake ipsum dolor sit. Amet croissant candy. I love ice cream soufflé powder. Pastry brownie pudding. Pudding candy I love marshmallow pie powder bonbon tootsie roll. Marzipan powder cupcake I love jujubes bonbon wafer dessert ice cream. Carrot cake danish fruitcake macaroon. Pastry candy canes gummies I love chocolate halvah dragée. Jelly-o tart cupcake tiramisu oat cake liquorice cake toffee brownie.",
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 15.0,
            ),
            RaisedButton(
                padding: EdgeInsets.all(15.0),
                color: Colors.red,
                textColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Aceptar",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                onPressed: () => {
                      //here we can have more controll
                      Navigator.pop(context)
                    })
          ],
        ),
      ),
    );
  }
}
