import 'package:flutter/material.dart';

import 'model.dart';

class ListPage extends StatelessWidget {
  final List<Model> images;
  ListPage(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: images.length,
      itemBuilder: (context, int index) {
      return Container(
        child: Image.network(images[index].url),
      );
    });
  }
}
