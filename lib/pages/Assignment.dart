// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

import 'home_page.dart';

class asign_ment extends StatefulWidget {
  const asign_ment({Key? key}) : super(key: key);

  @override
  State<asign_ment> createState() => _asign_mentState();
}

class _asign_mentState extends State<asign_ment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 241, 246),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blue[600],
        title: const Text(' Assignments ! '),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
