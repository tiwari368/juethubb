import 'package:flutter/material.dart';

class Materialtile extends StatefulWidget {
  final icon;
  final String materialname;
  final String subTitl;
  const Materialtile({
    Key? key,
    required this.icon,
    required this.materialname,
    required this.subTitl,
  }) : super(key: key);

  @override
  State<Materialtile> createState() => _MaterialtileState();
}

class _MaterialtileState extends State<Materialtile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 167, 211, 248),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      child: widget.icon,
                      padding: EdgeInsets.all(16),
                      color: Colors.blue[100],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Text(
                        widget.materialname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //subtitle
                      Text(
                        widget.subTitl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
