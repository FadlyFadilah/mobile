import 'package:flutter/material.dart';

class PageGesture extends StatefulWidget {
  const PageGesture({Key? key}) : super(key: key);

  @override
  State<PageGesture> createState() => _PageGestureState();
}

class _PageGestureState extends State<PageGesture> {
  late String _title;

  @override
  void initState() {
    super.initState();
    _title = "Gesture Detector";
  }

  void _changetitle(String title) {
    setState(() {
      _title = title;
    });
  }

  Widget _buildItem(String title) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      color: Colors.blue,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_title),
        ),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                _changetitle("onTap Clicked");
              },
              child: _buildItem("Click with tap"),
            ),
            GestureDetector(
              onDoubleTap: () {
                _changetitle("onDoubleTap Clicked");
              },
              child: _buildItem("Click with double tap"),
            ),
            GestureDetector(
              onLongPress: () {
                _changetitle("onLongPress Clicked");
              },
              child: _buildItem("Click with long press"),
            ),
            GestureDetector(
              onVerticalDragDown: (dragDetails) {
                _changetitle("Vertical Drag Clicked");
              },
              child: _buildItem("Click with Veritcal Drag"),
            ),
            GestureDetector(
              onHorizontalDragEnd: (dragDetails) {
                _changetitle("Horizontal Drag Clicked");
              },
              child: _buildItem("Click with Horizontal Drag"),
            ),
            GestureDetector(
              onScaleEnd: (sclaeDetails) {
                _changetitle("Scale Clicked");
              },
              child: _buildItem("Click with Scale left"),
            ),
            InkWell(
              onTap: () {
                _changetitle("InkWell onTap Clicked");
              },
              child: _buildItem("Click with InkWell onTap"),
            ),
            InkWell(
              onDoubleTap: () {
                _changetitle("InkWell onDoubleTap Clicked");
              },
              child: _buildItem("Click with InkWell onDoubleTap"),
            ),
            InkWell(
              onLongPress: () {
                _changetitle("InkWell onLongPress Clicked");
              },
              child: _buildItem("Click with InkWell onLongPress"),
            ),
          ],
        ));
  }
}
