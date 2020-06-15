import 'package:flutter/material.dart';

class PlayMusic extends StatefulWidget {
  @override
  _PlayMusicState createState() => _PlayMusicState();
}

class _PlayMusicState extends State<PlayMusic> {
  double _currentPosition = 0.0;
  int _selectedIcon = 1;

  List<IconData> _icons = [
    Icons.skip_previous,
    Icons.play_arrow,
    Icons.skip_next,
  ];

  Widget _buildIcon(int index) {
    return Container(
      decoration: ShapeDecoration(
          color: _selectedIcon == index ? Colors.pink : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          )),
      alignment: Alignment.bottomCenter,
      height: 50.0,
      width: 50.0,
      child: IconButton(
        icon: Icon(_icons[index]),
        color: _selectedIcon == index ? Colors.white : Colors.black87,
        iconSize: 35.0,
        onPressed: () {
          setState(() {
            _selectedIcon = index;
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      height: MediaQuery.of(context).size.height * .15,
      // color: Colors.red,
      child: Column(
        children: [
          Slider(
            
            activeColor: Colors.pink,
            inactiveColor: Colors.grey,
            value: _currentPosition,
            onChanged: (newPosition) {
              setState(() {
                _currentPosition = newPosition;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _icons
                .asMap()
                .entries
                .map(
                  (mP) => _buildIcon(mP.key),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
