import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toastt extends StatefulWidget {
  const Toastt({Key? key}) : super(key: key);

  @override
  State<Toastt> createState() => _ToasttState();
}

class _ToasttState extends State<Toastt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Toast"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text("Show Long Toast"),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Long Toast",
                    toastLength: Toast.LENGTH_LONG,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text("Show Short Toast"),
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text("Show Center Short Toast"),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text("Show TOP Short Toast"),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: const Text("Show Colored Short Toast"),
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      backgroundColor: Colors.greenAccent,
                      textColor: Colors.black54);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
