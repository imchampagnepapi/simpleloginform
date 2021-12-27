import 'package:flutter/material.dart';
import 'package:simple_login_form/screens/screens.dart';

void main(){
  runApp(const DemoApp());
}

class DemoApp extends StatelessWidget{
  const DemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Login Form",
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      home: const LoginForm(),
    );
  }

}