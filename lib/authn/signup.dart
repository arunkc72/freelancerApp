import 'package:brandbuilder_flutter/components/custom_button.dart';
import 'package:brandbuilder_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool obsureText = true;

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reEnterPasswordController =
      TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

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
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 54),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
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
                              controller: _emailController,
                              validator: (value) {
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!);
                                if (value == null || value.isEmpty) {
                                  return "Enter Email";
                                } else if (!emailValid) {
                                  return "Enter Valid Email";
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: 'EmailAddess',
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
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _phoneNumberController,
                              validator: (value) {
                                bool phoneNumberValid =
                                    RegExp(r"^\?0[0-9]{10}$").hasMatch(value!);
                                if (!phoneNumberValid) {
                                  return "Enter Valid PhoneNumber";
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: 'PhoneNumber',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(
                              height: 63,
                            ),
                            CustomButton(
                                height: 54,
                                borderRadius: 20,
                                width: 224,
                                child: Text(
                                  'UPLOAD',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )),
                            SizedBox(
                              height: 21,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'Submit Your Document Here',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                  children: [
                                    TextSpan(
                                        text:
                                            '\n\n(Example: Password/Citizenship)',
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.51)))
                                  ]),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            CustomButton(
                                height: 54,
                                borderRadius: 20,
                                isValidated: true,
                                width: 224,
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  }
                                },
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ))
                          ],
                        ))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
