import 'package:flutter/material.dart';

class RecommendedFurniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FurnitureRow(
                    imageURL:
                        'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                    title: 'Spring Bed',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: FurnitureRow(
                    imageURL:
                        'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                    title: 'Single Room',
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FurnitureRow(
                    imageURL:
                        'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                    title: 'Spring Bed',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: FurnitureRow(
                    imageURL:
                        'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                    title: 'Single Room',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FurnitureRow extends StatelessWidget {
  final String imageURL;
  final String title;

  const FurnitureRow({required this.imageURL, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 175,
          height: 200,
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            children: <Widget>[
              Container(
                width: 170,
                height: 160,
                color: Colors.blue,
                child: Image.network(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 15.0,
                offset: Offset.zero,
              )
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
