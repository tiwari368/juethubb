import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/pages/previousyear.dart';
import 'package:juethubb/previous%20year/YEars/2021-2022.dart';
import 'package:juethubb/previous%20year/YEars/2022_pre.dart';

import '../pages/home_page.dart';
import '../utilities/materialstile.dart';

class paper_3 extends StatefulWidget {
  const paper_3({super.key});

  @override
  State<paper_3> createState() => _paper_3State();
}

class _paper_3State extends State<paper_3> {
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
                icon: Icon(Icons.book_online_outlined),
                materialname: '2022',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const pre_2022()));
              },
            ),
            GestureDetector(
              child: Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: '2021-2022',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const pre_2021()));
              },
            ),
            // GestureDetector(
            //   child: const Materialtile(
            //     icon: Icon(Icons.book_online_outlined),
            //     materialname: '2020',
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (BuildContext context) => const paper_2()));
            //   },
            // ),
            // GestureDetector(
            //   child: const Materialtile(
            //     icon: Icon(Icons.book_online_outlined),
            //     materialname: '2019',
            //   ),
            //   onTap: () {
            //     Navigator.of(context).push(MaterialPageRoute(
            //         builder: (BuildContext context) => const ));
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
