class Computer {
  String name;
  int price;
  String color;
  String makerName;

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
  });
}

class Computer extends TangibleAsset {
  String MakerName;


}

abstract class TangibleAsset {

  String color;

  TangibleAsset(required this.name, required his.price, this.color,);

}

abstract class Asset {
  String name;
  int price;

  Asset({required this.name, required this.price});
}