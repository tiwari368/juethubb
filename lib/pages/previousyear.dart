import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:juethubb/models/firebase_file.dart';
import 'package:juethubb/pages/firebase_api.dart';
import 'package:juethubb/pages/home_page.dart';
import 'package:juethubb/pages/pdfs.dart';
import 'package:juethubb/previous%20year/1styearpapers.dart';
import 'package:juethubb/previous%20year/2ndyearpapers.dart';
import 'package:juethubb/previous%20year/3rdyearpaper.dart';
import 'package:juethubb/previous%20year/4thyearpapers.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../utilities/materialstile.dart';

class PrevYear extends StatefulWidget {
  const PrevYear({Key? key}) : super(key: key);

  @override
  State<PrevYear> createState() => _PrevYearState();
}

class _PrevYearState extends State<PrevYear> {
  // late Future<List<FirebaseFile>> futureFiles;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   futureFiles = FirebaseApi.listAll('pre_3/2022_pre/cse/fsd/t2/');
  // }

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
            // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //     builder: (BuildContext context) => HomePage()));
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
      // body: FutureBuilder<List<FirebaseFile>>(
      //   future: futureFiles,
      //   builder: (context, snapshot) {
      //     switch (snapshot.connectionState) {
      //       case ConnectionState.waiting:
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       default:
      //         if (snapshot.hasError) {
      //           return Center(
      //             child: Text('Some Error has Occured'),
      //           );
      //         } else {
      //           final files = snapshot.data!;
      //           return Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               const SizedBox(
      //                 height: 12,
      //               ),
      //               Expanded(
      //                 child: ListView.builder(
      //                   itemCount: files.length,
      //                   itemBuilder: ((context, index) {
      //                     final file = files[index];
      //                     return buildFile(context, file);
      //                   }),
      //                 ),
      //               ),
      //             ],
      //           );
      //         }
      //     }
      //   },
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 15, bottom: 8, left: 10, right: 10),
        child: ListView(
          children: [
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: '4th year',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const paper_4()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: '3rd year',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const paper_3()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: '2nd year',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const paper_2()));
              },
            ),
            GestureDetector(
              child: const Materialtile(
                icon: Icon(Icons.book_online_outlined),
                materialname: '1st year',
                subTitl: 'T1 T2 T3',
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const paper_1()));
              },
            ),
          ],
        ),
        // Column(
        //   children: [
        //     ListTile(
        //       title: Text(
        //         '3rd Year Previous Year Paper',
        //         style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold,
        //             fontSize: 20),
        //       ),
        //       tileColor: Colors.blue,

        //     ),
        //   ],
        // ),
      ),
    );
  }
}

// Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
//     title: Text(
//       file.name,
//       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//     ),
//     onTap: () async {
//       openFile(url: file.url, fileName: file.name);
//     });
// Future openFile({required String url, String? fileName}) async {
//   final file = await downloadFile(url, fileName!);
//   if (file == null) {
//     return;
//   }
//   print('Path: ${file.path}');
//   OpenFile.open(file.path);
// }

// Future<File?> downloadFile(String url, String name) async {
//   final appStorage = await getApplicationDocumentsDirectory();
//   final file = File('${appStorage.path}/$name');
//   try {
//     final response = await Dio().get(url,
//         options: Options(
//             responseType: ResponseType.bytes,
//             followRedirects: false,
//             receiveTimeout: 0));
//     final raf = file.openSync(mode: FileMode.write);
//     raf.writeFromSync(response.data);
//     await raf.close();
//     return file;
//   } catch (e) {
//     return null;
//   }
// }
