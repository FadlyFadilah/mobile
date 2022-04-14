import 'package:flutter/material.dart';

class Pertemuan8 extends StatelessWidget {
  const Pertemuan8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pertemuan 8"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan8/toast");
              },
              child: const Text("Halaman toast"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pertemuan8/dialog");
              },
              child: const Text("Halaman Dialog Show"),
            ),
          ],
        ),
      ),
    );
  }
}
