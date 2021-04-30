import 'package:flutter/material.dart';
import '../models/car_model.dart';

class PopularTile extends StatelessWidget {
  final Car car;
  const PopularTile({Key key, @required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        elevation: 4,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            margin: EdgeInsets.all(10),
            height: 300,
            width: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  car.name,
                  textScaleFactor: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  car.rank,
                  textScaleFactor: 1.1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  
                      child: Image.network(car.imagePath)),
                
              ],
            )),
      ),
    );
  }
}
