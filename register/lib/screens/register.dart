import 'package:flutter/material.dart';
import 'package:register/mixins/validation.dart';

class RegisterScreen extends StatefulWidget{
  createState() {
    return RegisteScreenState();
  }
}

class RegisteScreenState extends State<RegisterScreen> with Validation{

  final formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String password = '';


  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            nameField(),
            emailField(),
            passwordField(),
            registerButton()
          ],
        ),
      ),
    );
  }


  Widget nameField(){
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama Lengkap'
      ),
      validator: validateName,
      onSaved: (String value){
        name = value;
      },
    );
  }

  Widget emailField(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com'
      ),
      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password'
      ),
      validator: validatePassword,
      onSaved: (String value){
        password=value;
      },
    );
  }

  Widget registerButton(){
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: (){

        if(formKey.currentState.validate()){
          formKey.currentState.save();

          print('Nama Lengkap : $name');
          print('Email : $email');
          print('Password : $password');
        }

      },
      child: Text('Daftar'),
    );
  }

}