import 'package:flutter/material.dart';
import 'package:podcast_ui/src/provider/data_provider.dart';
import 'package:podcast_ui/src/screens/play_screen.dart';

class PlayListCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataP = DataProvider.of(context).data;

    ///List View Builder's Height

    final maxListHeight = MediaQuery.of(context).size.height * 0.50;
    final maxListWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        _buildTitles(),
        SizedBox(height: 20),

        //List View Container
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Container(
            height: maxListHeight,
            width: maxListWidth,
            // color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dataP.length,
              itemBuilder: (ctx, index) =>
                  _buildListItem(maxListHeight, maxListWidth, context, index),
            ),
          ),
        ),
      ],
    );
  }

  ///Top Head of the Column

  Widget _buildTitles() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recommended',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'View all',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  ///Image & Text for Podcast

  Widget _buildListItem(double maxListHeight, double maxListWidth,
      BuildContext context, int index) {
    final dataP = DataProvider.of(context).data;

    ///Container to contain Column & Text only for margin
    ///purpose.

    return Container(
      margin: EdgeInsets.only(right: 18.0, left: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Podcast Image

          Container(
            height: maxListHeight * .80,
            width: maxListWidth * 0.65,
            decoration: ShapeDecoration(
              // color: Colors.yellow,
              shadows: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 4.0,
                  offset: Offset(2.0, 5.0),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            child: Hero(
              tag: "imageTag$index",
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, __, ___) => PlayScreen(index: index),
                      transitionDuration: Duration(milliseconds: 500),
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    dataP[index]['imageUrl'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),

          //Podcast Text
          Text(
            dataP[index]['name'],
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          Text(
            dataP[index]['author'],
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          )
        ],
      ),
    );
  }
}
