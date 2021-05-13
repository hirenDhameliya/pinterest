import 'package:flutter/material.dart';

class CommonWidget {

  static Widget categaries({String name}) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Text(
          '$name',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25))),
    );
  }
  static Widget gridList({String image}){
    Container(
      height: 20,
      width: 20,
      color: Colors.red,
      child: Image(
        image: AssetImage('$image'),
        fit: BoxFit.cover,
      ),
    );
  }
}
