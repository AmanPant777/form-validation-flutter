import 'package:aman/screens/login_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Welcome'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding:const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           const   SizedBox(
                height: 200,
                child:Image(image: NetworkImage('https://images.unsplash.com/photo-1640510519286-69fcfc58ac98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),),
              ),
            const  SizedBox(height: 10,),
           const   Text('Welcome Back',style: TextStyle(
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
              ),
             const Text('Name',style: TextStyle(
                fontSize:11,
                fontWeight: FontWeight.bold,
              ),
              ),
             const Text('Email',style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              )
              ),
              ActionChip(
                label:const Text('logout'), 
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen())),
                autofocus: true,
                clipBehavior: Clip.hardEdge,
                backgroundColor:Colors.red,
                padding:const EdgeInsets.all(10),
                )
            ],
          ),
        ),
      ),
    );
  }
}