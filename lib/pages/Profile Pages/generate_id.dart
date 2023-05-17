import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_button.dart';
import '../../components/default_scaffold.dart';

class GenerateId extends StatelessWidget {
  const GenerateId({Key? key}) : super(key: key);

  static Widget customdetail(String info, String detail) {
    return Row(
      children: [
        Container(
          height: 17,
          width: 184,
          alignment: Alignment.centerRight,
          child: Text(
            info.toUpperCase(),
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(width: 19.7),
        SizedBox(
          height: 17,
          width: 184,
          child: Text(
            detail,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff5c75ec)),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      children: [
        SizedBox(height: 25),
        Text(
          'Generate ID Card',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 64.5),
        Container(
          height: 570,
          width: 388,
          color: Colors.white,
          child: Stack(children: [
            Positioned(
                right: 0, child: Image.asset('assets/images/rigthtid.png')),
            Image.asset('assets/images/leftid.png'),
            Positioned(
                top: 18.5,
                right: 15.4,

                // left: 10,
                child: Image.asset(
                  'assets/images/IdQrcode.png',
                  height: 72,
                  width: 72,
                )),
            Positioned(
              top: 87,
              left: 128,
              child: Container(
                height: 156,
                width: 156,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white,
                        width: 4,
                        style: BorderStyle.solid),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profileImage.png'))),
              ),
            ),
            Positioned(
              top: 18,
              left: 20,
              child: Text('h e a l e r'.toUpperCase(),
                  style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400))),
            ),
            Positioned(
                top: 42,
                left: 20,
                child: Image.asset('assets/images/Society.png')),
            Positioned(
              top: 280,
              child: Column(
                children: [
                  SizedBox(
                    height: 29,
                    child: Text(
                      'SANTOSH POUDEL',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 29,
                    child: Text(
                      'CBD USES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 7,
                        fontSize: 20,
                        color: Color(0xff00D49B),
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  customdetail('span card no:', '01876345'),
                  SizedBox(height: 17),
                  customdetail('Suffering from:', 'Anxiety, Stress'),
                  SizedBox(height: 17),
                  customdetail('Date of registration:', '1992-09-23'),
                  SizedBox(height: 17),
                  customdetail('Expire date:', '1992-09-23'),
                  SizedBox(height: 24),
                  SizedBox(
                    child: Column(children: [
                      Text(
                        '+977-9801012345',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'PAnthi Galli, POkhara 03,Nepal'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ]),
        ),
        SizedBox(height: 23),
        Center(
          child: CustomButton(
            height: 54,
            width: 224,
            borderRadius: 20,
            child: Text(
              'PRINT',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
