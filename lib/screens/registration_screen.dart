import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final _formKey=GlobalKey<FormState>();
  final firstNameEditingController=new TextEditingController();
  final secondNameEditingController=new TextEditingController();
  final emailEditingController=new TextEditingController();
  final passwordEditingController=new TextEditingController();
  final confirmPasswordEditingController=new TextEditingController();

  @override

  Widget build(BuildContext context) {
  


final firstNameField=TextFormField(
  controller: firstNameEditingController,
  keyboardType: TextInputType.name,
  autofocus: false,
  onSaved: (value){
    firstNameEditingController.text=value.toString();
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.person),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "First Name"
  ),
);


final lastNameField=TextFormField(
  controller: secondNameEditingController,
  keyboardType: TextInputType.name,
  autofocus: false,
  onSaved: (value){
    secondNameEditingController.text=value.toString();
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.person),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Second Name"
  ),
);

final emailField=TextFormField(
  controller: emailEditingController,
  keyboardType: TextInputType.emailAddress,
  autofocus: false,
  onSaved: (value){
    emailEditingController.text=value.toString();
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.mail),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Email"
  ),
);

final passwordField=TextFormField(
  controller: passwordEditingController,
  keyboardType: TextInputType.name,
  obscureText: true,
  autofocus: false,
  onSaved: (value){
    passwordEditingController.text=value.toString();
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.vpn_key),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Password"
  ),
);

final confirmPasswordField=TextFormField(
  controller: confirmPasswordEditingController,
  keyboardType: TextInputType.emailAddress,
  obscureText: true,
  autofocus: false,
  onSaved: (value){
    confirmPasswordEditingController.text=value.toString();
  },
  textInputAction: TextInputAction.done,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.vpn_key),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Confirm Password"
  ),
);

  final loginButton=Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(10),
  color:Colors.red[400],
  child: MaterialButton(
    padding:const EdgeInsets.all(20),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: (){},
    child:const Text('Sign Up',textAlign: TextAlign.center,
     style: TextStyle(
       color: Colors.white,
       fontWeight: FontWeight.bold,
       fontSize: 15,
     ),),
  ),
);



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.red,
        ),
      ),
      backgroundColor: Colors.white,
      body:Container(      
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                firstNameField,
                lastNameField,
                emailField,
                passwordField,
                confirmPasswordField,
                loginButton
              ],
            ),),
        ),
      ),
    );

  }
}