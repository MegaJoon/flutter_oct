import 'package:flutter/material.dart';

// https://dribbble.com/shots/7520392-Photo-editor-app/attachments/331802?mode=media

class PhotoEditor extends StatefulWidget {
  @override
  _PhotoEditorState createState() => _PhotoEditorState();
}

class _PhotoEditorState extends State<PhotoEditor> {
  Color _color = Color.fromRGBO(135, 195, 236, 1); // light blue
  Color _color2 = Color.fromRGBO(80, 138, 203, 1); // accent blue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background color
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: _color,
              child: Stack(
                children: <Widget>[
                  // accent blue color circle
                  Positioned(
                    top: -50.0,
                    right: -150.0,
                    child: Container(
                      height: 500.0,
                      width: 500.0,
                      decoration: BoxDecoration(
                        color: _color2,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
