import 'package:brandbuilder_flutter/components/searchbar.dart';
import 'package:flutter/material.dart';

class UiUXPage extends StatefulWidget {
  const UiUXPage({super.key});

  @override
  State<UiUXPage> createState() => _UiUXPageState();
}

class _UiUXPageState extends State<UiUXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 38,
                ),
                IconButton(
                    constraints: const BoxConstraints(),
                    padding: EdgeInsets.zero,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back,
                        color: Colors.white, size: 20)),
                SizedBox(
                  height: 17,
                ),
                SearchBar(),
                SizedBox(
                  height: 26,
                ),
                Text(
                  'What is UX/UI Design and what does a UX/UI Designer do?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 200,
                  width: 388,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/videoImage.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Container(
                      height: 71.67,
                      width: 71.67,
                      margin: EdgeInsets.only(
                        top: 107,
                        // left: 0,
                        // right: 170,
                        bottom: 38,
                      ),
                      child: Image.asset('assets/images/play.png')),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/images/Share.png'),
                    SizedBox(
                      width: 17,
                    ),
                    Image.asset('assets/images/Save.png'),
                    SizedBox(
                      width: 17,
                    ),
                    Image.asset('assets/images/Like.png'),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'What is a UX Designer?\n',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text:
                              '\nIf you are an individual who has come this far after a Google search to the likes of “what is a UX designer”, then we can answer you in a simple way by defining the UX Designer as a professional looking for the easy, intuitive, and friendly way to solve a problem based on the tastes, needs, and opinions of the users of a product or service. We refer, therefore, to the person in charge of designing the experience of a client in an optimal way.\n',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        TextSpan(
                            text:
                                '\nBefore continuing, it is important to differentiate between User Interface (UI) and User Experience (UX), two disciplines that are often confused, probably because they work hand in hand and because of the similarity of their acronyms. The reality is that UI refers to the creation of the interface, which can be visual or developed mainly with languages ​​such as HTML, CSS, or Javascript, while UX focuses on usability, focusing on analysis and social relationships.',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300)),
                        TextSpan(
                          text: '\n\nSkills of a UX Designer',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                            text:
                                '\n\nTasks as important as creating experiences that meet the needs of customers, improving the perception of the brand, and creating a solid link with their products often falls into the hands of the UX Designer. Think for a moment about applications like Netflix or Spotify, tools like Google Sheets or Zapier, and digital products like Google Home or Philips Hue. We assure you that behind all of them there is an immense amount of user experience work, with the aim of creating an easy, intuitive, efficient, and beautiful application',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300)),
                      ],
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
