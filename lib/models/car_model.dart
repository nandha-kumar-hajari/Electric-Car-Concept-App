import 'package:flutter/cupertino.dart';

class CarModel {
  static List<Car> items = [];
}

class Car {
  final int id;
  final String name;
  final String imagePath;
  final String description;
  final String maxRange;
  final String zeroToSixty;
  final num price;
  final String rank;
  Car({
    @required this.id,
    @required this.name,
    @required this.imagePath,
    @required this.description,
    @required this.maxRange,
    @required this.zeroToSixty,
    @required this.price,
    @required this.rank,
  });

  factory Car.fromMap(Map<String, dynamic> map) {
    return Car(
      id: map["id"],
      name: map["name"],
      imagePath: map["imagePath"],
      description: map["description"],
      maxRange: map["maxRange"],
      zeroToSixty: map["zeroToSixty"],
      price: map["price"],
      rank: map["rank"],
    );
  }
}
