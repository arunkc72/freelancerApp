import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obsureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _userNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter UserName";
                          }
                          // if(value.trim().length < 10){
                          //   return "enter";

                          // }
                        },
                        decoration: InputDecoration(
                            hintText: 'UserName',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: obsureText,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter Password";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obsureText = !obsureText;
                                });
                              },
                              child: Icon(obsureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                            )),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
