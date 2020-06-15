import 'package:flutter/material.dart';

class UserMenu extends StatelessWidget {
  final List<String> _textList = [
    "My Account",
    "Podcasts",
    "Downloaded",
    "Settings"
  ];

  Container _buildText(int index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(
        _textList[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.network(
              "https://cdn.pixabay.com/photo/2017/08/19/18/45/podcast-2659480_960_720.png",
              fit: BoxFit.contain,
            ),
          ),
          ..._textList.asMap().entries.map((mp) => _buildText(mp.key)).toList(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
