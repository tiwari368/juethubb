import 'package:flutter/material.dart';
import 'package:juethubb/pages/home_page.dart';
import 'package:juethubb/utilities/square.dart';

class PrevYear extends StatelessWidget {
  const PrevYear({Key? key}) : super(key: key);

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
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
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
        body: ListView(
          children: [
            mysquare(),
            mysquare(),
            mysquare(),
            mysquare(),
          ],
        ));
  }
}
