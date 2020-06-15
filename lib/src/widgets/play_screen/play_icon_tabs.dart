import 'package:flutter/material.dart';

class PlayIconTabs extends StatelessWidget {
  ///

  //Icons
  final List<IconData> _icons = [
    Icons.favorite_border,
    Icons.mode_comment,
    Icons.file_download,
    Icons.share,
  ];

  Icon _buildIcon(int index) {
    return Icon(
      _icons[index],
      size: 30.0,
      color: Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      height: MediaQuery.of(context).size.height * 0.08,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _icons
            .asMap()
            .entries
            .map(
              (mp) => _buildIcon(mp.key),
            )
            .toList(),
      ),
    );
  }
}
