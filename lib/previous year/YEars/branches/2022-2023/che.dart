import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/previous%20year/YEars/2022_pre.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/dcs.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/dsa.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/mai.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/ps.dart';
import 'package:juethubb/previous%20year/YEars/branches/che_subject/cfm.dart';
import 'package:juethubb/previous%20year/YEars/branches/che_subject/cre.dart';
import 'package:juethubb/previous%20year/YEars/branches/che_subject/pms.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/coe.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/fsd.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/ictk.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/ptrp.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/toc.dart';

import '../../../../utilities/materialstile.dart';

class che_pre extends StatefulWidget {
  const che_pre({super.key});

  @override
  State<che_pre> createState() => _che_preState();
}

class _che_preState extends State<che_pre> {
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
                materialname: 'CFM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const cfm_che()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'CRE',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const cre_che()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'PMS',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const pms_che()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'ICTK',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const ictk_cse()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
