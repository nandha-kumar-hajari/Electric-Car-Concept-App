import '../screens/detail_screen.dart';
import '../widgets/popular_tile.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'car_tile.dart';

import '../models/car_model.dart';

class HomeBottom extends StatefulWidget {
  @override
  _HomeBottomState createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final evJson = await rootBundle.loadString("assets/files/ev_data.json");
    final decodedJson = jsonDecode(evJson);
    var carsData = decodedJson["cars"];
    CarModel.items =
        List.from(carsData).map<Car>((car) => Car.fromMap(car)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.black, border: Border.all(width: 0)),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 5, right: 5),
          color: Colors.white,
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                popularHeading(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.white,
                    height: 200,
                    child: ListView.builder(
                      reverse: true,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: CarModel.items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus.unfocus();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(
                                    car: CarModel.items[index],
                                  ),
                                ),
                              );
                            },
                            child: PopularTile(car: CarModel.items[index]));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                bestSellersHeading(),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: CarModel.items.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            FocusManager.instance.primaryFocus.unfocus();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                  car: CarModel.items[index],
                                ),
                              ),
                            );
                          },
                          child: CarTile(car: CarModel.items[index]));
                    }),
              ]),
        ),
      ),
    );
  }
}

Widget popularHeading() {
  return Container(
    margin: EdgeInsets.only(left: 30, top: 10, right: 20, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Trending Now",
          textScaleFactor: 1.65,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "View all",
          style: TextStyle(color: Colors.black45),
        )
      ],
    ),
  );
}

Widget bestSellersHeading() {
  return Container(
    margin: EdgeInsets.only(
      left: 30,
      top: 10,
      right: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Sellers",
          textScaleFactor: 1.65,
          style: TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          "View all",
          style: TextStyle(color: Colors.black45),
        )
      ],
    ),
  );
}
