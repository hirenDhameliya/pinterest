import 'package:flutter/material.dart';
import 'package:pinterest_app/comman_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.all(Radius.circular(30)),
            //     borderSide: BorderSide(color: Colors.black38)),
            hintText: 'search for ideas',
            prefixIcon: Icon(
              Icons.search,
              size: 35,
              color: Colors.black,
            ),
            suffixIcon: Icon(
              Icons.camera_alt_rounded,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ideas for you',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
            children: [
              CommonWidget.gridList(image: 'assets/image/bg1.png'),
              CommonWidget.gridList(image: 'assets/image/bg1.png'),
              CommonWidget.gridList(image: 'assets/image/bg1.png'),
              CommonWidget.gridList(image: 'assets/image/bg1.png'),
              CommonWidget.gridList(image: 'assets/image/bg1.png'),
            ],
          ),
        ],
      ),
    );
  }
}
