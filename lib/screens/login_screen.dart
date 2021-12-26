import 'package:aman/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 final _formKey=GlobalKey<FormState>();

 final List aman=[
  {"aman":"1234"},
  {"anuj":"3435"}
 ];

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

final loginButton=Material(
  elevation: 5,
  borderRadius: BorderRadius.circular(10),
  color:Colors.red[400],
  child: MaterialButton(
    padding:const EdgeInsets.all(20),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: (){},
    child:const Text('Login',textAlign: TextAlign.center,
     style: TextStyle(
       color: Colors.white,
       fontWeight: FontWeight.bold,
       fontSize: 15,
     ),),
  ),
);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child:Padding(
                padding: const EdgeInsets.all(34),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  const  SizedBox(
                      height: 200,
                      child:Image(image: NetworkImage('https://images.unsplash.com/photo-1640404880570-2b61bf155ebf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),),
                    ),
                   const SizedBox(height: 20,),
                    emailField,
                  const  SizedBox(height: 20),
                    passwordFeild,
                    loginButton,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const Text('Dont have an account ?'),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                        },
                        child:const Text('SignUp',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                        ),
                        ) ,
                        )
                      ],
                    )
                  ],),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}