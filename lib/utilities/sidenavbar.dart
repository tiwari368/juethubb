import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/pages/sidenavbar/acc.dart';
import 'package:juethubb/pages/sidenavbar/chatt.dart';
import 'package:juethubb/pages/sidenavbar/dashboard.dart';

class Side_bar extends StatelessWidget {
  const Side_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('xxx'),
            accountEmail: Text('xxx.gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                "assets/photo.png",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[800],
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard_customize_outlined),
            title: Text('dashboard'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => DashBoard()));
            },
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Chat'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Chattychat()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('myAccount'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Acc()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}
