import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/previous%20year/YEars/2022_pre.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/bt.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/cdm.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/fm.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/imm.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/ls.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/mt1.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/mt2.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/nm.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/som.dart';
import 'package:juethubb/previous%20year/YEars/branches/2021/ME/tom.dart';
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

class me_pre_2021 extends StatefulWidget {
  const me_pre_2021({super.key});

  @override
  State<me_pre_2021> createState() => _me_pre_2021State();
}

class _me_pre_2021State extends State<me_pre_2021> {
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
                materialname: 'Basic Thermo',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const bt_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'CDM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const cdm_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'Fluid Mechanics',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const fm_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'IMM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const imm_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'LS',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const ls_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'ME',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const me_pre_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'MT1',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const mt1_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'MT2',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const mt2_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'NM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const mn_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'SOM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const som_me_2021()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: 'TOM',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const tom_me_2021()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
