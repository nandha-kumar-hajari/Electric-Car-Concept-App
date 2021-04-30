import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/home_bottom.dart';
import '../widgets/fancy_header.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          // CustomHeader(maxExtent: 320)
          FancyHeader(),
          SliverToBoxAdapter(
            child: HomeBottom(),
          )
        ],
      ),
    );
  }
}
