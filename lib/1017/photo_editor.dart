import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/7520392-Photo-editor-app/attachments/331802?mode=media

class PhotoEditor extends StatefulWidget {
  @override
  _PhotoEditorState createState() => _PhotoEditorState();
}

class _PhotoEditorState extends State<PhotoEditor> {
  Color _color = Color.fromRGBO(135, 195, 236, 1); // light blue
  Color _color2 = Color.fromRGBO(80, 138, 203, 1); // accent blue
  Color _clickedColor = Color.fromRGBO(70, 107, 131, 1); // accent blue
  Color _highlightColor = Color.fromRGBO(6, 73, 115, 1); // accent blue

  String _image = "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
                  // accent blue color circle1
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
                  ),
                  // accent blue color circle2
                  Positioned(
                    bottom: -100.0,
                    left: 0.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: _color2,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // top filter
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: screenHeight * 0.30,
            child: Container(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: _color.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ),

          // bottom filter
          Positioned(
            top: screenHeight * 0.70,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ),

          // appbar & image
          Positioned(
            top: 0,
            left: 16.0,
            right: 16.0,
            child: Column(
              children: <Widget>[
                SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: 40.0,
                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          size: 36.0,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Icon(
                          Icons.pause_circle_filled,
                          size: 36.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.play_circle_filled,
                          size: 36.0,
                          color: Colors.white.withOpacity(0.5),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(
                          Icons.cloud_upload,
                          size: 36.0,
                          color: Colors.white.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  height: 380.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                ),
              ],
            ),
          ),

          // bottom container
          Positioned(
            top: screenHeight * 0.70,
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 16.0),
                  height: 24.0,
                  child: ListView(
                    padding: EdgeInsets.only(top: 8.0),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        "Color".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "auto".toUpperCase(),
                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "filter".toUpperCase(),
                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      Text(
                        "enhance".toUpperCase(),
                        style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                // ListView
                Container(
                  height: 100.0,
                  child: ListView.builder(
                      itemCount: editor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 16.0,
                          ),
                          height: 100.0,
                          width: 80.0,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 80.0,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          image: DecorationImage(image: NetworkImage(editor[index].image), fit: BoxFit.fill),
                                          border:
                                              editor[index].isSelected ? Border.all(color: _highlightColor, width: 2.5) : null,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          color: editor[index].color.withOpacity(0.2),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                editor[index].text,
                                style: editor[index].isSelected
                                    ? TextStyle(color: _highlightColor, fontSize: 12.0, fontWeight: FontWeight.bold)
                                    : TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        );
                      }),
                ),
                Container(
                  height: 64.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0), topRight: Radius.circular(48.0)),
                      color: Colors.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Center(
                              child: Icon(
                            Icons.picture_in_picture,
                            size: 32.0,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: _clickedColor,
                          child: Center(
                              child: Icon(
                            Icons.edit,
                            size: 32.0,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Center(
                              child: Icon(
                            Icons.text_rotate_vertical,
                            size: 40.0,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          child: Center(
                              child: Icon(
                            Icons.crop,
                            size: 32.0,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Editor {
  String image;
  String text;
  Color color;
  bool isSelected;

  Editor({this.image, this.text, this.color, this.isSelected});
}

List<Editor> editor = [
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "Normal",
      color: Colors.white.withOpacity(0),
      isSelected: true),
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "Perpetua",
      color: Colors.redAccent,
      isSelected: false),
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "Calderon",
      color: Colors.amber,
      isSelected: false),
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "Nashville",
      color: Colors.deepPurple,
      isSelected: false),
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "Inkwell",
      color: Colors.grey,
      isSelected: false),
  Editor(
      image: "https://cdn.pixabay.com/photo/2014/07/10/11/15/balloons-388973__340.jpg",
      text: "random",
      color: Colors.green,
      isSelected: false),
];
