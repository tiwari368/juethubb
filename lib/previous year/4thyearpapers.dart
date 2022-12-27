import 'package:flutter/material.dart';
import 'package:juethubb/pages/previousyear.dart';

import '../pages/home_page.dart';

class paper_4 extends StatefulWidget {
  const paper_4({super.key});

  @override
  State<paper_4> createState() => _paper_4State();
}

class _paper_4State extends State<paper_4> {
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
    );
  }
}
