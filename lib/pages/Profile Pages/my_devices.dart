import 'package:brandbuilder_flutter/components/default_scaffold.dart';
import 'package:brandbuilder_flutter/pages/Profile%20Pages/generate_id.dart';
import 'package:flutter/material.dart';

class MyDevices extends StatefulWidget {
  const MyDevices({super.key});

  @override
  State<MyDevices> createState() => _MyDevicesState();
}

class _MyDevicesState extends State<MyDevices> {
  final List mobileDevices = [
    ['iphoneXR', '5.3.48', '2021-08-12 09:04:32'],
    ['Android', '5.3.48', '2021-08-12 09:04:32'],
    ['Android', '5.3.48', '2021-08-12 09:04:32'],
  ];

  final List credentials = [
    [
      'Zeal Heal',
      9806773686,
      '2021-08-12 09:04:32 PM',
      '2021-08-12 09:04:32 AM'
    ],
    [
      'Nikita Boss',
      84565456,
      '2021-08-12 09:04:32 PM',
      '2021-08-12 09:04:32 AM'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(children: [
      SizedBox(
        height: 24,
      ),
      Text(
        'My Devices',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 38,
      ),
      Container(
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: mobileDevices.length,
            itemBuilder: (context, index) {
              return MyDeviceCustomTile(
                  appVersion: mobileDevices[index][1],
                  deviceType: mobileDevices[index][0],
                  lastAddedOn: mobileDevices[index][2]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 29,
              );
            }),
      ),
      SizedBox(
        height: 46,
      ),
      Text(
        'Credentials',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 25,
      ),
      Container(
        child: ListView.separated(
            shrinkWrap: true,
            itemCount: credentials.length,
            itemBuilder: (context, index) {
              return CredentialsCustomTile(
                  name: credentials[index][0],
                  number: credentials[index][1],
                  addedOn: credentials[index][2],
                  lastLogin: credentials[index][3]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 29,
              );
            }),
      ),
    ]);
  }
}

class MyDeviceCustomTile extends StatelessWidget {
  final String appVersion;
  final String deviceType;

  final String lastAddedOn;

  const MyDeviceCustomTile(
      {super.key,
      required this.appVersion,
      required this.deviceType,
      required this.lastAddedOn});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.mobile_screen_share_outlined),
            SizedBox(
              width: 16,
            ),
            Text(
              deviceType,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'App Version',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          appVersion,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 9,
        ),
        Text(
          'Added On',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          lastAddedOn,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class CredentialsCustomTile extends StatelessWidget {
  final String name;
  final int number;
  final String addedOn;
  final String lastLogin;

  const CredentialsCustomTile(
      {super.key,
      required this.name,
      required this.number,
      required this.addedOn,
      required this.lastLogin});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.mobile_screen_share_outlined),
            SizedBox(
              width: 16,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
        Text(
          number.toString(),
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Added On',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          addedOn,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'Last Login',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          lastLogin,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ],
    );
    ;
  }
}
