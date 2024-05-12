import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            "Home",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                width: 450,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                decoration: BoxDecoration(
                  // color: Colors.green[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Discover The Most Modern Furniture',
                  style: TextStyle(fontSize: 25, letterSpacing: 2),
                ),
              ),
              Container(
                height: 80,
                width: 450,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                // color: Colors.grey[350],
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[350],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'All',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'Living Room',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'Beed Room',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'Dining Room',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'Single Room',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.fromLTRB(0, 0, 12, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey[100],
                        ),
                        // constraints: BoxConstraints.expand(),
                        child: Text(
                          'Family Room',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 400,
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                // color: Colors.grey[350],
                child: Text(
                  'Recomended Furniture :',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontFamily: 'Poppins'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Row(
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
                                      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'spring beed',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox
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
                                      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Single Room',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox//SizedBox
                        ],
                      ),
                      Row(
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
                                      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'spring beed',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox
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
                                      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Single Room',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox//SizedBox
                        ],
                      ),
                      Row(
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
                                      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'spring beed',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox
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
                                      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Single Room',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox//SizedBox
                        ],
                      ),
                      Row(
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
                                      'https://blue.kumparan.com/image/upload/fl_progressive,fl_lossy,c_fill,q_auto:best,w_640/v1634025439/01h5xs3hda785b8t695n4f7z9g.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'spring beed',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox
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
                                      'https://images.tokopedia.net/blog-tokopedia-com/uploads/2020/02/1.-Single-Room-sumber-gambar-Pixabay.jpg',
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Single Room',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                                ]), //BoxDecoration
                          ), //Container
                          SizedBox(width: 20), //SizedBox//SizedBox
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
