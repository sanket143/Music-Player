import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  String albumName;

  Album(this.albumName);

  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        child: Center(
          child: Text(widget.albumName)
        )
      )
    );
  }
}