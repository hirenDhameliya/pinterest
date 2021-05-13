import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest_app/Staggered_list.dart';
import 'package:pinterest_app/comman_widget.dart';
import 'search_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                   CommonWidget.categaries(name: 'All',),
                   CommonWidget.categaries(name: 'Following'),
                   CommonWidget.categaries(name: 'Design'),
                   CommonWidget.categaries(name: 'Fashion'),
                   CommonWidget.categaries(name: 'Technologies'),
                   CommonWidget.categaries(name: 'Science'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: FutureBuilder(
                  future: loader(),
                  builder: (context, state) {
                    if (state.connectionState == ConnectionState.done) {
                      return Container(
                        child: StaggeredGridView.count(
                          staggeredTiles: staggeredTiles,
                          crossAxisCount: 4,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2,
                          padding: const EdgeInsets.all(4),
                          children: tiles,
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.black38,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FutureBuilder(
          future: bottom(),
          builder: (context, state) {
            if (state.connectionState == ConnectionState.done) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                ),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 68,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.black12,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.home_rounded,
                              size: 35,
                              color: Colors.white70,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SearchPage()),
                                );
                              },
                              child: Icon(
                                Icons.search_rounded,
                                size: 35,
                                color: Colors.white70,
                              ),
                            ),
                            Icon(
                              Icons.chat_rounded,
                              size: 35,
                              color: Colors.white70,
                            ),
                            Icon(
                              Icons.person,
                              size: 35,
                              color: Colors.white70,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return Center();
          }),
    );
  }

  Future loader() async {
    return await Future.delayed(
      Duration(seconds: 3),
    );
  }

  Future bottom() async {
    return await Future.delayed(
      Duration(seconds: 4),
    );
  }
}
