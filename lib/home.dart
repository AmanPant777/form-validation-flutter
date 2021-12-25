import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
          fillColor: Color.fromRGBO(123, 1, 3, 1),
          icon: Icon(Icons.emoji_emotions)
          ),
      ),
    );
  }
}