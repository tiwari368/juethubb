import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:juethubb/main.dart';
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
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Side_bar(),
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('   JUET HUB ! '),
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
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //greetings
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Heyy, JUETIAN'S!",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
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
                            child: const Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Noti_fications()));
                          },
                        )
                      ],
                    ),
                    //====================================================================================================================================
                    const SizedBox(
                      height: 25,
                    ),

                    //search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Search',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ),
                    //How Do you Feel,
                    //====================================================================================================================================
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Share your Experience with us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    //====================================================================================================================================
                    //4 differnt face/////////////////////////////////////////////////////////////////////////////
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const Emotionalicon(emotionalface: '😀'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Emotionalicon(emotionalface: '🙂'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Emotionalicon(emotionalface: '😬'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Good',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Emotionalicon(emotionalface: '😫'),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Bad',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //====================================================================================================================================
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          //=============================================excercise heading======================================================================
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Materials ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const Icon(Icons.more_horiz),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //=====================================list views of materials=========================================================================
                        Expanded(
                          child: ListView(
                            children: [
                              GestureDetector(
                                child: const Materialtile(
                                  icon: Icon(Icons.favorite),
                                  materialname: 'Previous Year Papers',
                                  subTitl: '4 Years..',
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const PrevYear()));
                                },
                              ),
                              GestureDetector(
                                child: const Materialtile(
                                  icon: Icon(Icons.book_online_rounded),
                                  materialname: 'Assignments',
                                  subTitl: '4 Years..',
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const asign_ment()));
                                },
                              ),
                              GestureDetector(
                                child: const Materialtile(
                                  icon: const Icon(Icons.bookmark_add_sharp),
                                  materialname: 'Tutorials',
                                  subTitl: '4 Years..',
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Tutoriall()));
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
