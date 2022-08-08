// import 'package:flutter/material.dart';
// import '../screens/songs_list_ablum_screen.dart';

// class MyCustomAppBar extends SliverPersistentHeaderDelegate {
//   final double expandedHeight;
//   Size mediaQuery;
//   static const Color _background = Color.fromRGBO(255, 255, 255, 0.1);
//   MyCustomAppBar({required this.expandedHeight, required this.mediaQuery});

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Stack(
//       children: [
//         Container(
//           height: 290,
//         ),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           height: 260,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color.fromARGB(255, 65, 29, 174),
//                 Color.fromARGB(255, 4, 1, 1)
//               ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: Row(children: [
//             const SongSearchBarLib(),
//             InkWell(
//               onTap: () {},
//               child: Container(
//                 margin: EdgeInsets.only(left: mediaQuery.width * .05),
//                 alignment: Alignment.center,
//                 height: 45,
//                 width: 45,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),
//                     color: _background,
//                     border: Border.all(
//                         color: const Color.fromARGB(115, 17, 111, 189))),
//                 child: const Text('Sort'),
//               ),
//             )
//           ]),
//         ),

//         ///
//         Positioned(
//             bottom: 10,
//             right: 10,
//             child: Container(
//               child: Icon(Icons.play_arrow),
//               height: 45,
//               width: 45,
//               decoration: BoxDecoration(
//                   color: Colors.green, borderRadius: BorderRadius.circular(30)),
//             ))
//       ],
//     );
//   }

//   @override
//   double get maxExtent => 290;

//   @override
//   double get minExtent => 80;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
//       true;
// }
