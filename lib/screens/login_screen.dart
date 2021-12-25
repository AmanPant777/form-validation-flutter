import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final _formKey=GlobalKey<FormState>();

 final TextEditingController emailController=new TextEditingController();
final TextEditingController passwordController=new TextEditingController();
  @override
  Widget build(BuildContext context) {


final emailField=TextFormField(
  controller: emailController,
  keyboardType: TextInputType.emailAddress,
  autofocus: false,
  onSaved: (value){
    emailController.text=value.toString();
  },
  textInputAction: TextInputAction.next,
  decoration: InputDecoration(
    prefixIcon:const Icon(Icons.mail),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Email"
  ),
);

final passwordFeild=TextFormField(
  controller: passwordController,
  autofocus: false,
  onSaved: (value){
    passwordController.text=value.toString();
  },
  textInputAction: TextInputAction.done,
   decoration: InputDecoration(
    prefixIcon:const Icon(Icons.vpn_key),
    contentPadding:const EdgeInsets.all(10),
    border:OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
    hintText: "Password"
  ),
);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child:Form(
                key: _formKey,
                child: Column(children: [
                  emailField,
                const  SizedBox(height: 20),
                  passwordFeild
                ],),
              ),
            ),
          ),
        ),
      ),
    );
  }
}