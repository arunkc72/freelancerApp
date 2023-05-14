import "package:flutter/material.dart";

class Subscribed extends StatefulWidget {
  const Subscribed({super.key});

  @override
  State<Subscribed> createState() => _SubscribedState();
}

class _SubscribedState extends State<Subscribed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 38,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                        size: 20,
                      )),
                ],
              ),
              SizedBox(height: 28),
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child:
                        Image.asset('assets/images/brandbuilderLogoBig.png')),
              ),
              SizedBox(
                height: 61,
              ),
              Text(
                'THANK YOU!',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              SizedBox(
                height: 29,
              ),
              Text(
                'Enjoy The Service',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
              SizedBox(
                height: 111,
              ),
              Text(
                'You Have Subscribed for a yearly package',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 76,
              ),
              Container(
                height: 83,
                width: 388,
                child: Center(
                  child: Text(
                    'Your subscription will help support orphans and disadvantaged children around the world',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
