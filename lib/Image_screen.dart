import 'dart:io';

import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {

  final String img;
  const ImageScreen({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final File image = File(img);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        actions: const[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Center(
          child: Image.file(image,),
        ),
          );
  }
}