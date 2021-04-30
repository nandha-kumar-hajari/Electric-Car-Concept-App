import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _myFocusNode = FocusNode();

  @override
  void dispose() {
    _myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 0,
      child: Card(
        elevation: 0.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: EdgeInsets.only(left: 22, right: 22, top: 5, bottom: 5),
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          // color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 22,
                  width: 22,
                  child: Image.asset("assets/images/search.png")),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  focusNode: _myFocusNode,
                  decoration: InputDecoration(
                    hintText: "Search here",
                    hintStyle: TextStyle(color: Colors.black26),
                    border: InputBorder.none,
                    hoverColor: Colors.black26,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 25,
                  width: 25,
                  child: Image.asset("assets/images/filter.png")),
            ],
          ),
        ),
      ),
    );
  }
}
