import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:example_flutter/album.dart';
import 'package:file_type/file_type.dart';

/// Application Homepage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> musicWidgets = [];

  void getList() {
    var systemTempDir = Directory('/home');

    // List directory contents, recursing into sub-directories,
    // but not following symbolic links.
    // systemTempDir.list(recursive: true, followLinks: false)
    //   .listen((FileSystemEntity entity) {
    //     if (entity is File && getLastFileType(entity.path) == '.mp3') {
    //       setState((){
    //         musicWidgets.add(Album(entity.path));
    //       });
    //     }
    //   });

    setState(() {
      musicWidgets.add(Album('DNCE'));
    });
  }

  @override
  void initState(){
    super.initState();
    musicWidgets = [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: getList
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Wrap(
            children: musicWidgets 
          ),
        )
      )
    );
  }
}