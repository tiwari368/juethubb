import 'dart:async';

import 'package:flutter/material.dart';

class Emotionalicon extends StatelessWidget {
  final String emotionalface;
  const Emotionalicon({
    Key? key,
    required this.emotionalface,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          emotionalface,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
