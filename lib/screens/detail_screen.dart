import '../widgets/feature_chip.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/car_model.dart';

class DetailScreen extends StatelessWidget {
  final Car car;

  const DetailScreen({Key key, this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(tag: Key(car.id.toString()),child: Image.network(car.imagePath).h24(context)),
            VxArc(
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              height: 35,
              child: Container(
                // height: MediaQuery.of(context).size.height,
                color: Colors.white,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          car.name,
                          textScaleFactor: 1.6,
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "${car.price.toString()} \$",
                          textScaleFactor: 2,
                          style: TextStyle(
                              color: Colors.orange[500],
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10, left: 25),
                      child: Text(
                        "Specifications",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SpeedFeatureChip(
                          speedData: car.zeroToSixty,
                        ),
                        RangeFeatureChip(
                          rangeData: car.maxRange,
                        ),
                        RankFeatureChip(
                          rankData: car.rank,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 10, left: 25),
                      child: Text(
                        "Description",
                        textScaleFactor: 1.3,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ),
                    "${car.description}"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .pOnly(left: 24, right: 24),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          width: 340,
                          height: 70,
                          child: Center(
                            child: Text(
                              "Book Now",
                              textScaleFactor: 1.6,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ).py64(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
