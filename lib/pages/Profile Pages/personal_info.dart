import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> personalinfo = [
      'Full name',
      'Date of Birth (B.S)',
      'Date of Birth (A.D)',
      'Gender',
      'Phone Number',
      'Email',
      'Occupation',
      'Address',
      'Document Type',
    ];
    List<String> personaldata = [
      'Zeal Heal',
      '2049-05-19',
      '1992-09-23',
      'Male',
      '+977 981232131',
      'zeahheal@gmail.com',
      'Businessman',
      'Kathmandu,Nepal',
      'Citizenship',
    ];
    return Scaffold(
      body: Container(
        height: double.infinity,
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
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Information',
                      style: TextStyle(fontSize: 24),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )),
                  ],
                ),
                const SizedBox(height: 47),
                for (int i = 0; i <= 8; i++)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        personalinfo[i],
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 12),
                      Text(
                        personaldata[i],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 12,
                      )
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
