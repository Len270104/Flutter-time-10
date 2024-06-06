import 'package:flutter/material.dart';

class Image_display extends StatelessWidget {
  const Image_display({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: const Text("Images"),
        backgroundColor: Color.fromARGB(255, 255, 0, 119),
      ),
    );
  }
}