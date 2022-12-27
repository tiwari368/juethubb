import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/previous%20year/YEars/2022_pre.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/dcs.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/dsa.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/mai.dart';
import 'package:juethubb/previous%20year/YEars/branches/ECE_subjects/ps.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/coe.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/fsd.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/ictk.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/ptrp.dart';
import 'package:juethubb/previous%20year/YEars/branches/cse_subjects/toc.dart';
import 'package:juethubb/utilities/materialstile.dart';

// import '../../../utilities/materialstile.dart';

class ece_pre_2021 extends StatefulWidget {
  const ece_pre_2021({super.key});

  @override
  State<ece_pre_2021> createState() => _ece_pre_2021State();
}

class _ece_pre_2021State extends State<ece_pre_2021> {
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
                materialname: 'MAI',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const mai_ece()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'DCS',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const dcs_ece()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'COE',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const coe_cse()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'ICTK',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const ictk_cse()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'PS',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const ps_ece()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'DSA',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (BuildContext context) => const dsa_ece()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
