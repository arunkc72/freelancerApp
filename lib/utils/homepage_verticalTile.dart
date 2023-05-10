import 'package:flutter/material.dart';

class HomeVerticalTile extends StatelessWidget {
  final String title;
  final double money;

  const HomeVerticalTile({super.key, required this.title, required this.money});

  // const HomeVerticalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset('assets/images/freelancerprofile.png'),
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text('I am a sentence.place here random random ',
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            )),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '\$' + money.toString(),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(15)),
              child: Text('Monthly'),
            )
          ],
        ),
      ),
    );
  }
}
