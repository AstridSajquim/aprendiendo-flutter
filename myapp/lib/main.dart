import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/users.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  _MiApp createState() => _MiApp();
}

class _MiApp extends State<MiApp> {
  int actuallPage = 0;
  List<Widget> pages = [HomePage(), UsersPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: pages[actuallPage],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            print("hola");
            setState(() {
              actuallPage = index;
            });
          },
          currentIndex: actuallPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "Users"),
          ],
        ),
      ),
    );
  }
}
