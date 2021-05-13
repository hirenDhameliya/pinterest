import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final String image ;

  const MyCard({Key key, this.image}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
     child: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.all(Radius.circular(8)),
         image: DecorationImage(
           image: NetworkImage('$image'),
           fit: BoxFit.cover,
         ),
       ),
     ),
    );
  }
}
