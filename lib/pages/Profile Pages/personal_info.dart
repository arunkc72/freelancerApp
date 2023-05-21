import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  bool edit = false;
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
  List<Map<String, dynamic>> personaldata = [
    {'text': 'Zeal Heal', 'controller': TextEditingController()},
    {'text': '2049-05-19', 'controller': TextEditingController()},
    {'text': '1992-09-23', 'controller': TextEditingController()},
    {'text': 'Male', 'controller': TextEditingController()},
    {'text': '+977 981232131', 'controller': TextEditingController()},
    {'text': 'zeahheal@gmail.com', 'controller': TextEditingController()},
    {'text': 'Businessman', 'controller': TextEditingController()},
    {'text': 'Kathmandu,Nepal', 'controller': TextEditingController()},
    {'text': 'Citizenship', 'controller': TextEditingController()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill),
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
                  const SizedBox(height: 29),
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
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            edit = !edit;
                          });
                        },
                        child: Text(
                          edit ? 'Done' : 'Edit',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 47),
                  for (int i = 0; i < personalinfo.length; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          personalinfo[i],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300),
                        ),
                        SizedBox(height: 12),
                        edit
                            ? TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: personaldata[i]['text'],
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    personaldata[i]['text'] = value;
                                  });
                                },
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            : Text(
                                personaldata[i]['text'],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                        SizedBox(
                          height: 31,
                        )
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
