import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:med_app/Pages/register.dart';

import '../Pages/home_page.dart';
import '../Pages/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>{
  bool showLoginPage = true;

  void toggleScreens(){

  }

  @override
  Widget build(BuildContext context){
    if(showLoginPage){
      return LoginPage(showRegisterPage: toggleScreens);
    } else{
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}