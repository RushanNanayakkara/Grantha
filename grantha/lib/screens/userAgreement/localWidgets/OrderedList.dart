import 'package:flutter/material.dart';

class OrderedList extends StatefulWidget {
  final List itemList;

  OrderedList({Key key, this.itemList}) : super(key: key);

  @override
  _OrderedListState createState() => _OrderedListState();
}

class _OrderedListState extends State<OrderedList> {
  @override
  Widget build(BuildContext context) {
    int count = 0;
    List pointList = widget.itemList.map((item) {
      count++;
      return Text(
        count.toString() + ". " + item,
        style: TextStyle(
          color: Colors.white70,
        ),
      );
    }).toList();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: pointList,
        ),
      ),
    );
  }
}
