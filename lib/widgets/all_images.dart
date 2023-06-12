import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class AllImages extends StatefulWidget {
  const AllImages({super.key});

  @override
  State<AllImages> createState() => _AllImagesState();
}

class _AllImagesState extends State<AllImages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MasonryGridView.builder(
      itemCount: 6,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('img/p${index + 1}.jpg'),
      ),
    ));
  }
}
