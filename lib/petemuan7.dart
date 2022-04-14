import 'package:flutter/material.dart';

class Pertemuan7 extends StatelessWidget {
  const Pertemuan7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 7"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan7/about");
              },
              child: const Text("Tap untuk ke about page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan7/pageGambar");
              },
              child: const Text("Tap untuk ke Page Gambar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan7/gesture");
              },
              child: const Text("Tap untuk ke Page Gesture"),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routing"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Tap untuk kembali"),
        ),
      ),
    );
  }
}
