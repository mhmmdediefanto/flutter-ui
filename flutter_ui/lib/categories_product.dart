import 'package:flutter/material.dart';

class RoomCategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 450,
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            RoomCategoryButton(text: 'All'),
            RoomCategoryButton(text: 'Living Room'),
            RoomCategoryButton(text: 'Bed Room'),
            RoomCategoryButton(text: 'Dining Room'),
            RoomCategoryButton(text: 'Single Room'),
            RoomCategoryButton(text: 'Family Room'),
          ],
        ),
      ),
    );
  }
}

class RoomCategoryButton extends StatelessWidget {
  final String text;

  const RoomCategoryButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[100],
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
    );
  }
}
