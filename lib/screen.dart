import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fadly Fadilah"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan7");
              },
              child: const Text("Halaman Pertemuan 7"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan8");
              },
              child: const Text("Halaman Pertemuan 8"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan10");
              },
              child: const Text("Halaman Pertemuan 10"),
            ),
          ],
        ),
      ),
    );
  }
}
