import 'package:flutter/material.dart';

import 'my_item.dart';

class MyGrid extends StatelessWidget {
  MyGrid(
      {this.spacing = 0.0,
      this.crossAxisCount = 2,
      this.width = 750.0,
      this.imageAspectRatio = 0.56});
  final int crossAxisCount;
  final double width;
  final double spacing;
  final double imageAspectRatio;
  @override
  Widget build(BuildContext context) {
    double itemWidth = (width - crossAxisCount * spacing + spacing) /
        this.crossAxisCount.toDouble();
    itemWidth = itemWidth.floorToDouble();
    return Wrap(
        spacing: spacing, // gap between adjacent chips
        runSpacing: spacing * 0.8, // gap between lines
        children: [1, 2, 3, 4, 5, 6]
            .map((e) => MyItem(
                imageUrl:
                    "https://gitee.com/codetown/codedata/raw/master/cmovie/images/t0$e.jpg",
                imageAspectRatio: imageAspectRatio,
                width: itemWidth,
                title: "电视电影动漫音乐内容名称$e"))
            .toList());
  }
}
