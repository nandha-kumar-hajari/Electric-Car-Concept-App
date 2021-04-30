import 'package:flutter/material.dart';

class SpeedFeatureChip extends StatelessWidget {
  final String speedData;

  const SpeedFeatureChip({Key key, this.speedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        width: 80,
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              "assets/images/speed.png",
              width: 40,
              height: 40,
            ),
            Text(
              "0 to 60",
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              speedData,
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class RangeFeatureChip extends StatelessWidget {
  final String rangeData;

  const RangeFeatureChip({Key key, this.rangeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              "assets/images/distance.png",
              width: 80,
              height: 40,
            ),
            Text(
              "Range",
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              rangeData,
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class RankFeatureChip extends StatelessWidget {
  final String rankData;

  const RankFeatureChip({Key key, this.rankData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10),
      elevation: 5,
      child: Container(
        width: 80,
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              "assets/images/trend.png",
              width: 38,
              height: 38,
            ),
            Text(
              "Trending at",
              style: TextStyle(color: Colors.black87),
            ),
            Text(
              rankData,
              textScaleFactor: 1.3,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

