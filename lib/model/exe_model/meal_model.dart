class MealModel {
  String? image;
  String? name;
  num? view;

  MealModel({required this.image,required this.name,required this.view});
}

final mealList = [
  MealModel(image: "assets/images/meals/meal_1.png", name: "Classic Greek \n    Salad", view: 13.2),
  MealModel(image: "assets/images/meals/meal_2.png", name: "Classic Greek \n    Salad", view: 13.2),
  MealModel(image: "assets/images/meals/meal_1.png", name: "Classic Greek \n    Salad", view: 13.2),
];

class BurgerModel {
  String? name;
  String? image;
  List<String>? receipts;
  List<num>? gram;
  num? view;

  BurgerModel({required this.name,required this.image,required this.receipts,required this.gram,required this.view});
}

final burgerList = [
  BurgerModel(name: "Fransuz kartoshka bilan acchiq tovuqli burger 1", image: "assets/images/burger.png", receipts: ["Pomidor","Karam","Taqo","Bo'lak non",],gram: [300,400,400,300],view: 13),
  BurgerModel(name: "Fransuz kartoshka bilan acchiq tovuqli burger 2", image: "assets/images/burger.png", receipts: ["Pomidor","Karam","Taqo","Bo'lak non",],gram: [300,400,400,300],view: 13),
  BurgerModel(name: "Fransuz kartoshka bilan acchiq tovuqli burger 3", image: "assets/images/burger.png", receipts: ["Pomidor","Karam","Taqo","Bo'lak non",],gram: [300,400,400,300],view: 13),
];