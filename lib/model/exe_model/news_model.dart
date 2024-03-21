class NewsModel {
  String? image;
  String? desc;
  int? likes;
  String? type;
  int? date;
  String? ownerImg;
  String? ownerName;

  NewsModel({
    required this.image,
    required this.desc,
    required this.likes,
    required this.type,
    required this.date,
    required this.ownerImg,
    required this.ownerName
  });
}

final newsList = [
  NewsModel(image: "assets/images/newone.png", desc: "Yoga odamlarga qanday yordam berad", likes: 2738, type: '', date: 3,  ownerImg: "",ownerName: "Hahashah hahahahhahhah"),
  NewsModel(image: "assets/images/newtwo.png", desc: "Yoga odamlarga qanday yordam berad", likes: 2934, type: '', date: 7  ,ownerImg: "",ownerName: "Haddhahah adsadsasd"  ),
  NewsModel(image: "assets/images/newone.png", desc: "Yoga odamlarga qanday yordam berad", likes: 2532, type: '', date: 4  ,ownerImg: "",ownerName: "Hahasssssshah dfasdafasdfasdf"  ),
  NewsModel(image: "assets/images/newtwo.png", desc: "Yoga odamlarga qanday yordam berad", likes: 2284, type: '', date: 2 ,ownerImg: "",ownerName: "Hahsssahah asdfddddfad"   ),
  NewsModel(image: "assets/images/newone.png", desc: "Yoga odamlarga qanday yordam berad", likes: 5267, type: '', date: 1,ownerImg: "",ownerName: "Hahsahah sadfasdfsadfsdf"   ),
];
