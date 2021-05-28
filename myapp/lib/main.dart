import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatefulWidget {
  @override
  _MiApp createState() => _MiApp();
}

class _MiApp extends State<MiApp> {
  List<Person> _persons = [
    Person("José", "Galdamez", "098"),
    Person("Astrid", "Sajquim", "852"),
    Person("Sofi", "Sajquim", "789"),
    Person("Luis", "Chang", "123")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MaterialAPP",
      home: Scaffold(
          appBar: AppBar(
            title: Text("MaterialAPPBar"),
          ),
          body: ListView.builder(
              itemCount: _persons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onLongPress: () {
                    this._deletePerson(context, _persons[index]);
                  },
                  title: Text(
                      _persons[index].name + " " + _persons[index].lastname),
                  subtitle: Text(_persons[index].phone),
                  leading: CircleAvatar(
                    child: Text(_persons[index].name.substring(0, 1)),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                );
              })),
    );
  }

  _deletePerson(context, Person person) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text("Delete contact"),
              content: Text("Confirm delete: " + person.name),
              actions: [
                FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("cancel")),
                FlatButton(
                    onPressed: () {
                      print(person.name);
                      this.setState(() {
                        this._persons.remove(person);
                      });
                      Navigator.pop(context);
                    },
                    child: Text(
                      "delete",
                      style: TextStyle(color: Colors.red),
                    )),
              ],
            ));
  }
}

class Person {
  String name;
  String lastname;
  String phone;

  Person(String name, String lastname, String phone) {
    this.name = name;
    this.lastname = lastname;
    this.phone = phone;
  }
}
