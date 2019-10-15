import 'package:flutter/material.dart';

import 'package:flutter_oct/to1014/list_file.dart';

class PlayPage extends StatefulWidget {
  int id;

  PlayPage(this.id);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> with TickerProviderStateMixin {
  AnimationController _animationController;
  bool isPlaying = false;
  double _value = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  void _changedState() {
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              children: <Widget>[_buildSafeArea(), _buildMainContainer()],
            )));
  }

  _buildSafeArea() {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: Container(
        margin: EdgeInsets.only(right: 24.0, bottom: 16.0),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Music",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900)),
            Container(
                height: 32,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                    suffixIcon: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0))),
                        child: Icon(Icons.search,
                            size: 24.0, color: Colors.white)),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  _buildMainContainer() {
    return Container(
      height: MediaQuery.of(context).size.height - 80,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Hero(
            tag: "music + ${widget.id}",
            child: Container(
                margin: EdgeInsets.only(right: 24.0),
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                        image: NetworkImage(song[widget.id].image),
                        fit: BoxFit.cover))),
          ),
          Text(song[widget.id].name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold)),
          Text(song[widget.id].singer,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold)),
          Container(
            margin: EdgeInsets.only(right: 24.0),
            height: 40,
//            color: Colors.amber,
            child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.black,
                    trackHeight: 3.0,
                    inactiveTrackColor: Colors.grey,
                    thumbColor: Colors.white,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                    overlayColor: Colors.black.withOpacity(0.2),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0)),
                child: Slider(
//                  label: "ss",
                  min: 0.0,
                  max: double.parse(song[widget.id].time),
                  value: _value,
                  onChanged: (value) {
                    setState(() {});
                    print(_value);
                  },
                )),
          ),
          Container(
            height: 100,
//            color: Colors.indigo,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.change_history, size: 16.0, color: Colors.grey),
                Icon(Icons.skip_previous, size: 32.0, color: Colors.black),
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Center(
                    child: IconButton(
                        iconSize: 48,
                        icon: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: _animationController),
                        onPressed: () {
                          _changedState();
                        }),
                  ),
                ),
                Icon(Icons.skip_next, size: 32.0, color: Colors.black),
                Icon(Icons.multiline_chart, size: 16.0, color: Colors.grey),
              ],
            ),
          )
        ],
      ),
    );
  }
}
