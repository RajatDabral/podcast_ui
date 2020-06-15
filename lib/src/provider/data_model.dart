class DataModel {
  List get data => [..._data];

  List get favoriteList => [..._favoriteList];

  //Favorite List
  final List<Map<String, String>> _favoriteList = [
    {
      "name": "Radio Lab",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2013/06/22/07/06/girl-140569_960_720.jpg",
      "episodeNo": "21",
    },
    {
      "name": "Criminal",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2014/07/24/21/35/mortality-401222_960_720.jpg",
      "episodeNo": "51",
    },
    {
      "name": "Space Pod",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2016/05/24/12/24/mystical-1412287_960_720.jpg",
      "episodeNo": "101",
    },
    {
      "name": "Sew This",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2015/11/17/10/42/vintage-1047275_960_720.jpg",
      "episodeNo": "11",
    },
    {
      "name": "Looking for Adeventure",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2018/05/17/15/24/armillar-ball-3408811_960_720.jpg",
      "episodeNo": "61",
    },
  ];

  //Podcast List
  final List<Map<String, String>> _data = [
    {
      "name": "My Favorite Murder",
      "author": "Georgia & Karen",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2020/06/12/18/19/hand-5291357_960_720.png",
      "episodeTitle": "Murder on the Train",
      "episodeNo": "51",
    },
    {
      "name": "Devlok",
      "author": "Devdutt pattanaik",
      "imageUrl":
          "https://i.pinimg.com/originals/af/24/3c/af243c4cabd68dcbdc8c05c660b22042.png",
      "episodeTitle": "Garuda",
      "episodeNo": "20",
    },
    {
      "name": "How I built this",
      "author": "Guy Raz",
      "imageUrl":
          "https://www.evan360.com/wp-content/uploads/2017/11/howibuiltthis-2.jpg",
      "episodeTitle": "Bumble",
      "episodeNo": "116",
    },
    {
      "name": "AudioGyan",
      "author": "Kedar Nimkar",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2019/04/04/18/50/cassette-4103530_960_720.jpg",
      "episodeTitle": "Is Cooking an Art?",
      "episodeNo": "20",
    },
    {
      "name": "Ek Khaani Aisi bhi",
      "author": "Rj Praveen",
      "imageUrl":
          "https://cdn.pixabay.com/photo/2014/08/24/08/38/sunrise-426085_960_720.jpg",
      "episodeTitle": "Kabristan",
      "episodeNo": "03",
    },
  ];
}
