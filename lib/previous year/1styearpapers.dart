import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/pages/previousyear.dart';

class paper_1 extends StatefulWidget {
  const paper_1({super.key});

  @override
  State<paper_1> createState() => _paper_1State();
}

class _paper_1State extends State<paper_1> {
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
