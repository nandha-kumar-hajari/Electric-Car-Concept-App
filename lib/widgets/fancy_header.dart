import 'package:flutter/material.dart';
import 'header_widgets.dart';
class FancyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 350,
      // backgroundColor: Color(0xff8f8cdc),
      backgroundColor: Colors.black,
      // pinned: true,
      // elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: HeaderWidgets(),
      ),
    );
  }
}
