import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Gambar"),
      ),
      body: const ClipOval(
        child: Image(
            width: 300,
            height: 300,
            image: AssetImage('assets/images/yuta.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}
