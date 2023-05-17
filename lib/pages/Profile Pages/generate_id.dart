import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/default_scaffold.dart';

class GenerateId extends StatelessWidget {
  const GenerateId({Key? key}) : super(key: key);

  static Widget customdetail(String info, String detail) {
    return Row(
      children: [
        Text(
          info.toUpperCase(),
          textAlign: TextAlign.right,
          style: TextStyle(
              color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 19.7),
        Text(
          detail,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16, color: Color(0xff5c75ec)),
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
          color: Colors.white,
          child: Stack(children: [
            Positioned(
                right: 0, child: Image.asset('assets/images/rigthtid.png')),
            Positioned(left: 0, child: Image.asset('assets/images/leftid.png')),
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
              right: 80,
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
              top: 280,
              left: 62,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 29,
                    child: Text(
                      'SANTOSH POUDEL',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  SizedBox(
                    height: 29,
                    child: Text(
                      'CBD USES',
                      style: TextStyle(
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
                  customdetail('Date of registration', '1992-09-23'),
                  SizedBox(height: 17),
                  customdetail('Expire date:', '1992-09-23'),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 40,
                    child: Text(
                      '+977-9801012345 \nPAnthi Galli, POkhara 03, Nepal'
                          .toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
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
