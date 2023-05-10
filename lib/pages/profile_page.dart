import 'package:brandbuilder_flutter/pages/Profile%20Pages/personal_info.dart';
import 'package:brandbuilder_flutter/utils/gradient_border.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int? selectedTileIndex;
  void handleTileTap(int index) {
    setState(() {
      selectedTileIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonalInformation(),
          ));
    });
  }

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
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage:
                          AssetImage('assets/images/profileImage.png'),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Zeal Heal\n',
                            style: TextStyle(fontSize: 24),
                            children: [
                          TextSpan(
                            text: '+977 9812345678',
                            style: TextStyle(fontSize: 16),
                          ),
                        ])),
                    SizedBox(height: 35),
                    GradientBorder(
                      height: 52,
                      width: 213,
                      text: 'Balance : \$722.00',
                      textStyle: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 29),
                    CustomListTile(
                      onTap: () => handleTileTap(0),
                      isSelected: selectedTileIndex == 0,
                      image: 'assets/images/accountIcon.png',
                      title: 'Account',
                      subtitle: 'View your personal info',
                    ),
                  ],
                ),
                CustomListTile(
                    isSelected: selectedTileIndex == 1,
                    onTap: () => handleTileTap(1),
                    image: 'assets/images/company.png',
                    title: 'My Bank Account',
                    subtitle: 'Connected Banks'),
                CustomListTile(
                    isSelected: selectedTileIndex == 2,
                    onTap: () => handleTileTap(2),
                    image: 'assets/images/DeviceIcon.png',
                    title: 'My Devices and Credentials',
                    subtitle: ' Manage device,credentials & notification IDS'),
                CustomListTile(
                    isSelected: selectedTileIndex == 3,
                    onTap: () => handleTileTap(3),
                    image: 'assets/images/History.png',
                    title: 'Generate ID Card',
                    subtitle: ' Generate Id card and QR code'),
                CustomListTile(
                    isSelected: selectedTileIndex == 4,
                    onTap: () => handleTileTap(4),
                    image: 'assets/images/settingsIcon.png',
                    title: 'Settings',
                    subtitle: 'Manage Settings'),
                CustomListTile(
                    isSelected: selectedTileIndex == 5,
                    onTap: () => handleTileTap(5),
                    image: 'assets/images/LogoutIcon.png',
                    title: 'Logout',
                    subtitle: ' Signout from this deveice')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;
  const CustomListTile({
    required this.isSelected,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: isSelected
                ? (LinearGradient(
                    colors: [Color(0xff65F4CD), Color(0xff5A5BF3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ))
                : null),
        child: ListTile(
          isThreeLine: true,
          horizontalTitleGap: 0,
          dense: true,
          contentPadding: EdgeInsets.only(left: 20),
          minLeadingWidth: 60,
          visualDensity: VisualDensity(vertical: -4),
          leading: Image.asset(
            image,
            fit: BoxFit.contain,
            color: isSelected ? Colors.black : Colors.white,
            height: 25,
            width: 25,
          ),
          title: Text(title,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontSize: 14)),
          subtitle: Text(subtitle,
              style: TextStyle(
                  color: isSelected ? Colors.black : Colors.white,
                  fontSize: 10)),
        ),
      ),
    );
  }
}
