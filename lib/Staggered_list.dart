import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'card.dart';

const List<StaggeredTile> staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(2,3),
  StaggeredTile.count(2,4),
  StaggeredTile.count(2,4),
  StaggeredTile.count(2,3),
  StaggeredTile.count(2,3),
  StaggeredTile.count(2,4),
  StaggeredTile.count(2,4),
  StaggeredTile.count(2,3),
  StaggeredTile.count(2,4),
  StaggeredTile.count(2,4),


];

const List<Widget> tiles = <Widget>[
  MyCard(image:'https://loremflickr.com/320/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/321/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/322/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/323/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/332/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/325/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/326/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/327/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/328/480/brazil,rio'),
  MyCard(image:'https://loremflickr.com/329/480/brazil,rio'),

];

