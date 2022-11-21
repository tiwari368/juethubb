import 'package:flutter/material.dart';

class Materialtile extends StatelessWidget {
  final icon;
  final String materialname;
  const Materialtile({Key? key, required this.icon, required this.materialname})
      : super(key: key);

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
                      child: icon,
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
                        materialname,
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
                        '4 years..',
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
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}
