import 'package:flutter/material.dart';
import 'package:podcast_ui/src/user_menu.dart';
import 'package:podcast_ui/src/widgets/favorite_screen/favorite_play_buttons.dart';
import '../provider/data_provider.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favP = DataProvider.of(context).favoriteList;

    final itemH = MediaQuery.of(context).size.height * .20;
    final itemW = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "My Favorites",
          style: TextStyle(
            color: Colors.pink,
            fontSize: 25.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
        elevation: 0.0,
      ),
      drawer: UserMenu(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: favP.length,
          itemBuilder: (ctx, index) => _buildItem(itemH, itemW, index, favP),
        ),
      ),
    );
  }

  Widget _buildItem(double itemH, double itemW, int index, List favP) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: itemH,
      // color: Colors.red,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              height: itemH,
              width: itemW * .30,
              fit: BoxFit.cover,
              image: NetworkImage(favP[index]['imageUrl']),
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Favorite Play Buttons
              FavoritePlayButtons(itemH: itemH),
              SizedBox(height: 5.0),
              Text(
                favP[index]['name'],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.8,
                ),
              ),
              Text(
                "Episode ${favP[index]['episodeNo']}",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
