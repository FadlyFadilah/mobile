import 'package:flutter/material.dart';
import 'package:prog/dialogpage.dart';
import 'package:prog/pagegambar.dart';
import 'package:prog/pagegesture.dart';
import 'package:prog/pertemuan8.dart';
import 'package:prog/petemuan7.dart';
import 'package:prog/screen.dart';
import 'package:prog/toastt.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const MyApp());
      case '/pertemuan7':
        return MaterialPageRoute(builder: (context) => const Pertemuan7());
      case '/pertemuan7/about':
        return MaterialPageRoute(builder: (context) => const AboutPage());
      case '/pertemuan7/pageGambar':
        return MaterialPageRoute(builder: (context) => const PageGambar());
      case '/pertemuan7/gesture':
        return MaterialPageRoute(builder: (context) => const PageGesture());
      case '/pertemuan8':
        return MaterialPageRoute(builder: (context) => const Pertemuan8());
      case '/pertemuan8/toast':
        return MaterialPageRoute(builder: (context) => const Toastt());
      case '/pertemuan8/dialog':
        return MaterialPageRoute(builder: (context) => const DialogPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(
            child: Text("Error Page"),
          ),
        );
      },
    );
  }
}
