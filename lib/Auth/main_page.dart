import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Pages/auth_page.dart';
import '../Pages/home_page.dart';
import '../Pages/login_page.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context, snapshot){
          if(snapshot.hasData){
            return HomePage();
          } else{
            return AuthPage();
          }
         },
      ),
    );
  }
}