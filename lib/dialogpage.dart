import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Show"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Show Material Dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Material Dialog"),
                      content: const Text("Hai Nama Aku Fadly"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Hello Wolrd!");
                            Navigator.pop(context);
                          },
                          child: const Text("Hello World!"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Show Cupernito Dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text("Copertino Dialog"),
                      content: const Text("Hai Nama Aku Fadly"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Hello Wolrd!");
                            Navigator.pop(context);
                          },
                          child: const Text("Hello World!"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Show Loading Dialog 30 Sec"),
              onPressed: () {
                late Timer timer;
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (BuildContext context) {
                    timer = Timer(const Duration(seconds: 30), () {
                      Navigator.of(context).pop();
                    });
                    return AlertDialog(
                      content: Row(
                        children: [
                          const CircularProgressIndicator(),
                          Container(
                            margin: const EdgeInsets.only(left: 7),
                            child: const Text("Lagi Loading tunggu ya!"),
                          ),
                        ],
                      ),
                    );
                  },
                ).then(
                  (value) => {
                    if (timer.isActive) {timer.cancel()}
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text("Show Simple Dialog"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text("Pilih Salah Satu"),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("pilihan 1"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("pilihan 2"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("pilihan 3"),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("pilihan 4"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
