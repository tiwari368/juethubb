import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:juethubb/pages/Assignment.dart';
import 'package:juethubb/pages/previousyear.dart';
import 'package:juethubb/pages/tuorial.dart';
import 'package:juethubb/utilities/Notifications.dart';
import 'package:juethubb/utilities/emotional.dart';
import 'package:juethubb/utilities/materialstile.dart';

import '../utilities/sidenavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  var time = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Side_bar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('   JUET HUB ! '),
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Flexible(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //greetings
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Heyy, FOLK!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '${time.day}/${time.month}/${time.year}',
                              style: TextStyle(color: Colors.blue[200]),
                            ),
                          ],
                        ),

                        //Notifications
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[500],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Noti_fications()));
                          },
                        )
                      ],
                    ),
                    //====================================================================================================================================
                    SizedBox(
                      height: 25,
                    ),

                    //search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ),
                    //How Do you Feel,
                    //====================================================================================================================================
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'experiencing app to be ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    //====================================================================================================================================
                    //4 differnt face/////////////////////////////////////////////////////////////////////////////
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Emotionalicon(emotionalface: '😀'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Emotionalicon(emotionalface: '🙂'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Emotionalicon(emotionalface: '😬'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Good',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Emotionalicon(emotionalface: '😫'),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //====================================================================================================================================
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          //=============================================excercise heading======================================================================
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Materials...',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //=====================================list views of materials=========================================================================
                        Expanded(
                          child: ListView(
                            children: [
                              GestureDetector(
                                child: Materialtile(
                                  icon: Icon(Icons.favorite),
                                  materialname: 'Previous Year Papers',
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PrevYear()));
                                },
                              ),
                              GestureDetector(
                                child: Materialtile(
                                    icon: Icon(Icons.book_online_rounded),
                                    materialname: 'Assignments'),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          asign_ment()));
                                },
                              ),
                              GestureDetector(
                                child: Materialtile(
                                    icon: Icon(Icons.bookmark_add_sharp),
                                    materialname: 'Tutorials'),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Tutoriall()));
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
