import 'package:flutter/material.dart';

import '../widgets/home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: _buildAppHeader(),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildAppHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good morning,',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Rajat',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 35.0,
            // backgroundColor: Colors.red,
            backgroundImage: AssetImage("assets/images/Profile_Image.jpg"),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBar(),
          SizedBox(height: 25),
          IconTabList(),
          SizedBox(height: 25),
          PlayListCarousel(),
        ],
      ),
    );
  }
}
