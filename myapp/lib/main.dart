import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  _MiApp createState() => _MiApp();
}

class _MiApp extends State<MiApp> {
  int actuallPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: actuallPage == 0 ? HomePage() : UsersPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
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

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Home",
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}

class UsersPage extends StatelessWidget {
  const UsersPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Users",
        style: TextStyle(fontSize: 30.0),
      ),
    );
  }
}
