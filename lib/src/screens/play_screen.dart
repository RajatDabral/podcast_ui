import 'package:flutter/material.dart';
import '../widgets/play_screen_widgets.dart';

class PlayScreen extends StatelessWidget {
  final int index;
  PlayScreen({this.index});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PlayImageText(index: index),
              SizedBox(height: 10.0),
              PlayIconTabs(),
              SizedBox(height: 10.0),
              PlayMusic(),
            ],
          ),
        ),
      ),
    );
  }

  //Appbar
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            children: [
              Icon(
                Icons.clear_all,
                color: Colors.black,
                size: 30.0,
              ),
              SizedBox(width: 10),
              Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 30.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
