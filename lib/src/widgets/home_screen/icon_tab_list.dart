import 'package:flutter/material.dart';

class IconTabList extends StatefulWidget {
  @override
  _IconTabListState createState() => _IconTabListState();
}

class _IconTabListState extends State<IconTabList> {
  int _selectedIndex = 0;

  ///List of Icon Data

  List<IconData> _iconLists = [
    Icons.security,
    Icons.spa,
    Icons.poll,
    Icons.access_time,
  ];

  List<String> _titles = [
    "Premium",
    "Popular",
    "Trending",
    "Recent",
  ];

  ///Custom Widget Function to build Items
  ///for different Icon Data

  Widget _buildItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * .20,
            decoration: ShapeDecoration(
              color: _selectedIndex == index ? Colors.black : Colors.white,
              shadows: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Icon(
              _iconLists[index],
              color: Colors.grey,
              size: 35,
            ),
          ),
          Text(
            _titles[index],
            style: TextStyle(
              fontSize: 16,
              color: _selectedIndex == index ? Colors.black : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      height: MediaQuery.of(context).size.height * 0.20,
      width: double.infinity,
      // color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _iconLists
            .asMap()
            .entries
            .map(
              (mapEntry) => _buildItem(
                mapEntry.key,
              ),
            )
            .toList(),
      ),
    );
  }
}
