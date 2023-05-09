import 'package:flutter/material.dart';

class FreelancerPage extends StatefulWidget {
  const FreelancerPage({Key? key}) : super(key: key);

  @override
  _FreelancerPageState createState() => _FreelancerPageState();
}

class _FreelancerPageState extends State<FreelancerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/darkThemeBackground.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back, color: Colors.white)),
              const SizedBox(height: 27),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/freelancerprofile.png',
                        height: 180, width: 160, fit: BoxFit.cover),
                    Column(
                      children: [
                        Text(
                          'John Jack',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: Text('Connect Now')),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
