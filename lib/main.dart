import 'package:flutter/material.dart';
import 'package:podcast_ui/src/provider/data_model.dart';
import './src/bottom_nav_bar.dart';
import 'src/provider/data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DataProvider(
      dataModel: DataModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Podcast Ui',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BottomNavBar(),
      ),
    );
  }
}
