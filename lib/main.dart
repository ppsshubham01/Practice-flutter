import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful Widget full Example",
    home: Favoritecity(),
  ));
}

class Favoritecity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FavoriteCityState();
  }
}

class FavoriteCityState extends State<Favoritecity> {
  String Cityname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull app Full Example!"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              // onChanged: , also use in onSubmitted
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint("this is the Test of Stateful");
                  Cityname = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Your cool city is $Cityname",
                  style: TextStyle(fontSize: 20.0),
                ))
          ],
        ),
      ),
    );
  }
}
