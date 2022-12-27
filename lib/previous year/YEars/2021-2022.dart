import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/previous%20year/3rdyearpaper.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/che2021.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/cse2021.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ece2021.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/me2021.dart';
// import 'package:juethubb/previous%20year/YEars/branches/che.dart';
// import 'package:juethubb/previous%20year/YEars/branches/cse.dart';
// import 'package:juethubb/previous%20year/YEars/branches/ece.dart';
// import 'package:juethubb/previous%20year/YEars/branches/me.dart';

import '../../utilities/materialstile.dart';

class pre_2021 extends StatefulWidget {
  const pre_2021({super.key});

  @override
  State<pre_2021> createState() => _pre_2021State();
}

class _pre_2021State extends State<pre_2021> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 241, 246),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blue[600],
        title: Text('Previous Year Papers'),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15, bottom: 8, left: 10, right: 10),
        child: ListView(
          children: [
            GestureDetector(
              child: const Materialtile(
                subTitl: 'T1 T2 T3',
                icon: Icon(Icons.book_online_outlined),
                materialname: 'CSE',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const cse_pre_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'ECE',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const ece_pre_2021
                //     ()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                subTitl: 'T1 T2 T3',
                icon: Icon(Icons.book_online_outlined),
                materialname: 'ME',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const me_pre_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'CHE',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const che_pre_2021()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
