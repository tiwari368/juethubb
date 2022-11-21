import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class mysquare extends StatefulWidget {
  const mysquare({Key? key}) : super(key: key);

  @override
  State<mysquare> createState() => _mysquareState();
}

class _mysquareState extends State<mysquare> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        height: 100,
        color: Colors.blue[100],
      ),
    );
  }
}
