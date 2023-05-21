import 'package:brandbuilder_flutter/pages/freelancer_info.dart';
import 'package:flutter/material.dart';

import '../components/custom_button.dart';
import '../components/default_scaffold.dart';
import '../utils/gradient_border.dart';
import 'freelancer_grid.dart';

class FreelancerPage extends StatefulWidget {
  const FreelancerPage({Key? key}) : super(key: key);

  @override
  FreelancerPageState createState() => FreelancerPageState();
}

class FreelancerPageState extends State<FreelancerPage> {
  bool _saveimage = false;
  TextStyle myTextStyle(double fontSize, FontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  bool editable = false;
  void _edit() {
    setState(() {
      editable = !editable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      children: [
        const SizedBox(height: 27),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                alignment: const Alignment(0.825, -1),
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FreelancerInfo(),
                        )),
                    child: Image.asset(
                      'assets/images/freelancerprofile.png',
                      height: 180,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          _saveimage = !_saveimage;
                        });
                      },
                      child: Container(
                        color: _saveimage ? const Color(0xff5A5BF3) : null,
                        child: Image.asset('assets/images/saveimage.png'),
                      )),
                ],
              ),
            ),
            const SizedBox(width: 23),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                Text('John Jack',
                    style: myTextStyle(20, FontWeight.w600, Colors.white)),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('UI/UX Designer',
                        style: myTextStyle(14, FontWeight.w400,
                            Colors.white.withOpacity(0.5))),
                    SizedBox(width: 10),
                    EditButton(ontap: _edit),
                  ],
                ),
                SizedBox(height: 10),
                Text('Experience: 2+ years',
                    style: myTextStyle(
                        14, FontWeight.w400, Colors.white.withOpacity(0.5))),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffffc107),
                      size: 15,
                    ),
                    Text(
                      '4.6',
                      style: myTextStyle(12, FontWeight.w400, Colors.white),
                    ),
                  ],
                ),
                Text('\$50.00/hr',
                    style: myTextStyle(14, FontWeight.w400, Colors.white)),
                SizedBox(height: 16),
                CustomButton(
                  height: 24,
                  width: 103,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  // editable ? EditPage :
                                  FreelancerGrid()));
                    },
                    child: Text(
                      editable ? 'Edit' : 'Connect Now',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        RichText(
            text: const TextSpan(
                text: 'Description\n',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                children: [
              TextSpan(
                  text:
                      '\nHey, I am John Jack. I have been into UX/UI since 2020. During this time, I started as UI designer and developed my skills to UX designer too.\n',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  children: [
                    TextSpan(
                        text: '\nMy strength includes\n\n',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            '\u2022 Initiate design backed with proper research and study (qualitative and quantitative as per requirement).\n\u2022 Clean and aesthetic interface which is vital to stand from competitors.\n \u2022 Communication with clients to identify what they want to achieve.\n \u2022 HTML/CSS/JAVASCRIPT knowledge Deadline compliance.\n'),
                    TextSpan(
                        text: '\nMy magic tools\n',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            '\n \u2022 Figma, Adobe XD, Blasamiq mockup, traditional pen and paper, notion.\n'),
                    TextSpan(
                        text: '\nExperience\n',
                        style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                        text:
                            '\n\u2022 UX/UI designer (2020- present) Brandbuilder \n\u2022 Working as a lead UX/UI designer. Prototyped and sketched food ordering applications, admin panel, pos, landing pages along with my amazing teams and interns.'),
                  ]),
            ])),
        const SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GradientBorder(
              radius: 10,
              height: 27,
              width: 152,
              child: Text(
                'Total Earnings: \$900+',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            GradientBorder(
              radius: 10,
              height: 27,
              width: 152,
              child: Text(
                'Total Jobs : 23',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
          ]),
        ),
        const SizedBox(height: 22),
        const Text('Work History', style: TextStyle(fontSize: 16)),
        const SizedBox(height: 17),
        const CustomListTile(
            leadingcolor: 0xff09C527,
            title: 'Website developer wanted',
            subtitle: 'Job in progress',
            price: '\$420.00',
            duration: 'Oct 22,2001 - Present'),
        const SizedBox(height: 8),
        const CustomListTile(
            leadingcolor: 0xffff0000,
            title: 'Website developer wanted',
            subtitle: 'Completed',
            price: '\$210.00',
            duration: 'Feb 1,2021-April 25,2021'),
        const SizedBox(height: 8),
      ],
    );
  }
}

class EditButton extends StatelessWidget {
  final VoidCallback ontap;
  const EditButton({
    required this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 20,
        width: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(255, 255, 255, 0.35),
            width: 1,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.edit,
          size: 9,
          color: Color.fromRGBO(255, 255, 255, 0.35),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final int leadingcolor;
  final String title;
  final String subtitle;
  final String price;
  final String duration;
  const CustomListTile(
      {super.key,
      required this.leadingcolor,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            SizedBox(width: 5),
            Container(
              height: 6,
              width: 6,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(leadingcolor)),
            ),
            SizedBox(width: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title,
                    style: const TextStyle(fontSize: 10, color: Colors.black)),
                SizedBox(width: 3),
                Text(subtitle,
                    style: const TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(price,
                    style: const TextStyle(fontSize: 10, color: Colors.black)),
                SizedBox(width: 3),
                Text(duration,
                    style: const TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.w300)),
              ],
            ),
            SizedBox(width: 17),
          ],
        ),
      ]),
    );
  }
}
