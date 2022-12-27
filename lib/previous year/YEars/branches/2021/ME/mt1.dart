import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:juethubb/models/firebase_file.dart';
import 'package:juethubb/pages/firebase_api.dart';
import 'package:juethubb/utilities/materialstile.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

// import '../../../../models/firebase_file.dart';
// import '../../2022_pre.dart';

class mt1_me_2021 extends StatefulWidget {
  const mt1_me_2021({super.key});

  @override
  State<mt1_me_2021> createState() => _mt1_me_2021State();
}

class _mt1_me_2021State extends State<mt1_me_2021> {
  late Future<List<FirebaseFile>> futureFiles;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureFiles = FirebaseApi.listAll('pre_3/2021-2022/MT1/');
  }

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
      body: FutureBuilder<List<FirebaseFile>>(
        future: futureFiles,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Some Error has Occured'),
                );
              } else {
                final files = snapshot.data!;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: files.length,
                        itemBuilder: ((context, index) {
                          final file = files[index];
                          return buildFile(context, file);
                        }),
                      ),
                    ),
                  ],
                );
              }
          }
        },
      ),
    );
  }
}

Widget buildFile(BuildContext context, FirebaseFile file) => Container(
      margin: EdgeInsets.all(12),
      child: InkWell(
        child: Materialtile(
          icon: Icon(Icons.book_online),
          materialname: file.name,
          subTitl: 'T1 T2 T3',
        ),
        onTap: () async {
          openFile(url: file.url, fileName: file.name);
        },
      ),
      // child:   ListTile(

      //     title: Text(

      //       file.name,

      //       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),

      //     ),

      //     onTap: () async {

      //       openFile(url: file.url, fileName: file.name);

      //     }),
    );
Future openFile({required String url, String? fileName}) async {
  final file = await downloadFile(url, fileName!);
  if (file == null) {
    return;
  }
  print('Path: ${file.path}');
  OpenFile.open(file.path);
}

Future<File?> downloadFile(String url, String name) async {
  final appStorage = await getApplicationDocumentsDirectory();
  final file = File('${appStorage.path}/$name');
  try {
    final response = await Dio().get(url,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0));
    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();
    return file;
  } catch (e) {
    return null;
  }
}
