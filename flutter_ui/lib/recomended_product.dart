import 'package:flutter/material.dart';
import '../utilities/api_service.dart';
import '../models/product.dart';

class RecommendedFurniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: fetchProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No products found'));
        } else {
          List<Widget> rows = [];
          for (var i = 0; i < snapshot.data!.length; i += 2) {
            List<Widget> rowChildren = [];
            rowChildren.add(Expanded(
              child: FurnitureRow(
                imageURL: 'http://localhost:8000/storage/' + snapshot.data![i].image,
                title: snapshot.data![i].title,
              ),
            ));

            if (i + 1 < snapshot.data!.length) {
              rowChildren.add(SizedBox(width: 10));
              rowChildren.add(Expanded(
                child: FurnitureRow(
                  imageURL: 'http://localhost:8000/storage/' + snapshot.data![i + 1].image,
                  title: snapshot.data![i + 1].title,
                ),
              ));
            } else {
              rowChildren.add(Spacer());
            }

            rows.add(Row(children: rowChildren));
            rows.add(SizedBox(height: 10));
          }

          return Container(
            margin: EdgeInsets.all(5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: rows),
            ),
          );
        }
      },
    );
  }
}

class FurnitureRow extends StatelessWidget {
  final String imageURL;
  final String title;

  const FurnitureRow({required this.imageURL, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 240,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: <Widget>[
          Container(
            width: 230,
            height: 160,
            color: Colors.blue,
            child: Image.network(
              imageURL,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Icon(Icons.error, color: Colors.red),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.black),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
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
          ),
        ],
      ),
    );
  }
}
