import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Pertemuan10 extends StatefulWidget {
  const Pertemuan10({Key? key}) : super(key: key);

  @override
  State<Pertemuan10> createState() => _Pertemuan10State();
}

class _Pertemuan10State extends State<Pertemuan10> {
  String jenis = "";
  double hasilKonversi = 0;
  String textCelcius = "";
  int radioValue = 0;
  String valueUnicode = "";

  void hitungKonversi() {
    if (textCelcius == "") {
      Fluttertoast.showToast(
          msg: "Masukan nilai suhu yang akan di konversikan",
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.red[600],
          textColor: Colors.white);
      return;
    }

    double celcius = double.parse(textCelcius);
    if (radioValue == 1) {
      setState(() {
        jenis = "Reamur";
        hasilKonversi = (4 / 5) * celcius;
      });
    } else if (radioValue == 2) {
      setState(() {
        jenis = "Kelvin";
        hasilKonversi = 273 + celcius;
      });
    } else {
      setState(() {
        jenis = "Fahrenheit";
        hasilKonversi = (9 / 5 * celcius) + 32;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.center,
          child: Text("Konver Suhu"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(color: Colors.amber[100]),
                child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("$textCelcius\u00b0C",
                              style: TextStyle(
                                  fontSize: 100,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green[800])),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                jenis == ""
                                    ? "Hasil Konversi"
                                    : "Hasil Konversi ke $jenis adalah $hasilKonversi",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green[800]),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              )),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[100]),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Masukan Nilai Celcius",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                          onChanged: (e) => textCelcius = e,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black54),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Pilih Konversi",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 1,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 1;
                                });
                              }),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                radioValue = 1;
                              });
                            },
                            child: Text("Reamur",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 2,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 2;
                                });
                              }),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                radioValue = 2;
                              });
                            },
                            child: Text("Kelvin",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: 3,
                              groupValue: radioValue,
                              onChanged: (value) {
                                setState(() {
                                  radioValue = 3;
                                });
                              }),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                radioValue = 3;
                              });
                            },
                            child: Text("Fahrenheit",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {
                            hitungKonversi();
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                          child: const Text(
                            "Hitung",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
