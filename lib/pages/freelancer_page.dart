import 'package:flutter/material.dart';

import '../utils/gradient_border.dart';

class FreelancerPage extends StatefulWidget {
  const FreelancerPage({Key? key}) : super(key: key);

  @override
  FreelancerPageState createState() => FreelancerPageState();
}

class FreelancerPageState extends State<FreelancerPage> {
  bool _saveimage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/darkThemeBackground.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                IconButton(
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 20)),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Stack(
                          alignment: const Alignment(0.8, -1),
                          children: [
                            Image.asset(
                              'assets/images/freelancerprofile.png',
                              height: 180,
                              width: 160,
                              fit: BoxFit.cover,
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _saveimage = !_saveimage;
                                  });
                                },
                                child: Container(
                                  color: _saveimage
                                      ? const Color(0xff5A5BF3)
                                      : null,
                                  child: Image.asset(
                                      'assets/images/saveimage.png'),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          RichText(
                              text: TextSpan(children: [
                            const TextSpan(
                              text: 'John Jack\n',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const WidgetSpan(child: SizedBox(height: 20)),
                            TextSpan(
                              text: 'UI/UX Designer \nExperience: 2+ years\n',
                              style: TextStyle(
                                fontSize: 12,
                                color: const Color(0xffffffff).withOpacity(0.5),
                              ),
                            ),
                            const WidgetSpan(child: SizedBox(height: 20)),
                            const WidgetSpan(
                                child: Icon(
                              Icons.star,
                              color: Color(0xffffc107),
                              size: 15,
                            )),
                            const WidgetSpan(child: SizedBox(height: 20)),
                            const TextSpan(
                                text: '4.6 \n \$50.00/hr\n',
                                style: TextStyle(fontSize: 12)),
                            const WidgetSpan(child: SizedBox(height: 20)),
                          ])),
                          Container(
                            height: 24,
                            width: 103,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xff65F4CD),
                                      Color(0xff5A5BF3),
                                    ])),
                            child: const Text('Connect Now '),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                RichText(
                    text: const TextSpan(
                        text: '\nDescription\n',
                        style: TextStyle(fontSize: 16),
                        children: [
                      TextSpan(
                          text:
                              '\nHey, I am John Jack. I have been into UX/UI since 2020. During this time, I started as UI designer and developed my skills to UX designer too.\n',
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                                text: '\nMy strength includes\n\n',
                                style: TextStyle(fontSize: 14)),
                            TextSpan(
                                text:
                                    '\u2022 Initiate design backed with proper research and study (qualitative and quantitative as per requirement).\n \u2022 Clean and aesthetic interface which is vital to stand from competitors.\n \u2022 Communication with clients to identify what they want to achieve.\n \u2022 HTML/CSS/JAVASCRIPT knowledge Deadline compliance.\n'),
                            TextSpan(
                                text: '\nMy magic tools\n',
                                style: TextStyle(fontSize: 14)),
                            TextSpan(
                                text:
                                    '\n \u2022 Figma, Adobe XD, Blasamiq mockup, traditional pen and paper, notion.\n'),
                            TextSpan(
                                text: '\nExperience\n',
                                style: TextStyle(fontSize: 14)),
                            TextSpan(
                                text:
                                    '\n\u2022 UX/UI designer (2020- present) Brandbuilder \n\u2022 Working as a lead UX/UI designer. Prototyped and sketched food ordering applications, admin panel, pos, landing pages along with my amazing teams and interns.'),
                          ]),
                    ])),
                const SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GradientBorder(
                        height: 27,
                        width: 152,
                        text: 'Total Earnings: \$900+'),
                      GradientBorder(
                        height: 27,
                        width: 152,
                        text: 'Total Jobs : 23'),
                    ]),
                const SizedBox(height: 10),
                const Text('Work History', style: TextStyle(fontSize: 20)),
                const SizedBox(height: 8),
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
              ],
            ),
          ),
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
      child: ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        dense: true,
        minLeadingWidth: 10,
        tileColor: Colors.white,
        leading: Container(
          height: 6,
          width: 6,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(leadingcolor)),
        ),
        textColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 10)),
            Text(subtitle, style: const TextStyle(fontSize: 8)),
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(price, style: const TextStyle(fontSize: 10)),
            Text(duration, style: const TextStyle(fontSize: 8)),
          ],
        ),
      ),
    );
  }
}
