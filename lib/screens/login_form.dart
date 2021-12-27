import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  TextEditingController emailTxtController = TextEditingController();
  TextEditingController passTxtController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(title: const Text("Login Form"),),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 16.0),
          child: Text("Enter ur credentials", style: TextStyle(color: Colors.teal, fontSize: 24.0),),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: _buildEmailTxtField(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: _buildPassTxtField(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
          child: _buildLoginBtn(),
        ),
      ],
    );
  }

  Widget _buildEmailTxtField(){
    return TextFormField(
      controller: emailTxtController,
      decoration: InputDecoration(
        label: const Text("Email"),
        prefixIcon: const Icon(Icons.email),
        border: getBorder(),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
        errorBorder: getBorder(isError: true)
      ),
    );
  }

  Widget _buildPassTxtField(){
    return TextFormField(
      controller: passTxtController,
      obscureText: true,
      decoration: InputDecoration(
        label: const Text("Password"),
        prefixIcon: const Icon(Icons.password),
        border: getBorder(),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),
        errorBorder: getBorder(isError: true)
      ),
    );
  }

  Widget _buildLoginBtn(){
    return ElevatedButton(
        onPressed: (){
          ///
          debugPrint(emailTxtController.text);
          debugPrint(passTxtController.text);
        },
        child: const Text("Login")
    );
  }

  OutlineInputBorder getBorder({bool isError = false}){
    return OutlineInputBorder(
        borderSide: BorderSide(color: isError? Colors.red: Colors.blue, width: 2.0),
        borderRadius: const BorderRadius.all(Radius.circular(8.0))
    );
  }
}
