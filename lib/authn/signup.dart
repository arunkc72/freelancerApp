import 'package:brandbuilder_flutter/components/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'UserName',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'EmailAddess',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'PhoneNumber',
                              hintStyle: TextStyle(color: Colors.white)),
                        ),
                        SizedBox(
                          height: 63,
                        ),
                        CustomButton(
                            height: 54,
                            width: 224,
                            child: Text(
                              'UPLOAD',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 21,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'Submit Your Document Here',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                              children: [
                                TextSpan(
                                    text: '\n\n(Example: Password/Citizenship)',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                            255, 255, 255, 0.51)))
                              ]),
                        )
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
