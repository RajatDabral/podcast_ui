import 'package:flutter/material.dart';
import '../../provider/data_provider.dart';

class PlayImageText extends StatelessWidget {
  final int index;
  PlayImageText({this.index});
  @override
  Widget build(BuildContext context) {
    final dataP = DataProvider.of(context).data;
    final maxH = MediaQuery.of(context).size.height * .55;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      height: maxH,
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Hero(
            tag: "imageTag$index",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image(
                height: maxH * .85,
                image: NetworkImage(
                  dataP[index]['imageUrl'],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            dataP[index]['name'],
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${dataP[index]['episodeTitle']} | Episode ${dataP[index]['episodeNo']}",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
