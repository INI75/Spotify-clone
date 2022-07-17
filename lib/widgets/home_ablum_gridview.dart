import 'package:flutter/material.dart';
import 'package:spotify/widgets/home_ablum_grid_items.dart';

class HomeAlbumGridView extends StatelessWidget {
  const HomeAlbumGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: const EdgeInsets.only(top: 20),
      height: 195,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3),
          itemBuilder: (context, index) {
            return HomeAblumGridItem();
          }),
    );
  }
}
