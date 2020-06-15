import 'package:flutter/material.dart';

class FavoritePlayButtons extends StatelessWidget {
  final double itemH;
  FavoritePlayButtons({this.itemH});

  final List<IconData> _icons = [
    Icons.skip_previous,
    Icons.play_arrow,
    Icons.skip_next,
  ];

  Widget _buildIcon(int index) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.pink,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          )),
      alignment: Alignment.bottomCenter,
      height: 30.0,
      width: 30.0,
      child: IconButton(
        icon: Icon(_icons[index]),
        color: Colors.white,
        iconSize: 15.0,
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: itemH * .25,
      width: MediaQuery.of(context).size.width * .30,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _icons
            .asMap()
            .entries
            .map(
              (mP) => _buildIcon(mP.key),
            )
            .toList(),
      ),
    );
  }
}
