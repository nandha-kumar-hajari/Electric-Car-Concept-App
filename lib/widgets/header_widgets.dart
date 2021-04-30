import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'search_bar.dart';

class HeaderWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
      child: Container(
        color: Colors.black,
        // decoration: BoxDecoration(color: Colors.black),
        width: MediaQuery.of(context).size.width,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/Logo.png',
                          height: 38,
                          width: 38,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: RichText(
                            text: TextSpan(
                              text: "Green",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "Volts",
                                    style: TextStyle(
                                      color: Colors.green[400],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/profile.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Text(
                  "Buying Electric Cars made easy!",
                  textScaleFactor: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: SearchBar(),
              )
            ]),
      ),
    );
  }
}
