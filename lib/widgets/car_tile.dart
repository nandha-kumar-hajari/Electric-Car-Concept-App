import 'package:flutter/material.dart';

import '../models/car_model.dart';

class CarTile extends StatelessWidget {
  final Car car;
  const CarTile({Key key, @required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 20, left: 10, right: 10),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
        elevation: 10,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          width: MediaQuery.of(context).size.width * 0.50,
          height: MediaQuery.of(context).size.height * 0.16,
          padding: EdgeInsets.only(
            top: 15,
            bottom: 10,
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      car.name,
                      overflow: TextOverflow.clip,
                      textScaleFactor: 1.25,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Text("${car.price.toString()} \$",
                      textScaleFactor: 1.25,
                      style: TextStyle(
                          color: Colors.orange[400],
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    child: Text(
                      "Book Now",
                      textScaleFactor: 0.8,
                    ),
                    onPressed: () {
                      // AlertDialog(content: Text("Item Added to cart"));
                    },
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Hero(
                  tag: Key(car.id.toString()),
                                  child: Image.network(
                    car.imagePath,
                    height: 250,
                    width: 180,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
