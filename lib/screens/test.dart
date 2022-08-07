import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);
  static const routeName = '/testScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverAppBar(expandedHeight: 200),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text(index.toString()),
              );
            }, childCount: 20),
          )
        ],
      ),

      ///
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBar({required this.expandedHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff8360c3),
                Color(0xff2ebf91),
              ],
            ),
          ),
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: const Text(
              'My Profile',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -10,
          right: 21,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(color: Colors.green),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}


  // SliverAppBar( pinned: true,
          //   expandedHeight: 500.0,
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.asset(
          //       'images/w.jpg',
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          //   bottom: PreferredSize(
          //     preferredSize: const Size.fromHeight(0.0),
          //     child: Transform.translate(
          //       offset: Offset(0, 24),
          //       child: RaisedButton(
          //         shape: StadiumBorder(),
          //         child: Text("Click Here"),
          //         onPressed: () {},
          //       ),
          //     ),
          //   ),
          // ),
////
///
///
///
///
///
///

//  SliverAppBar(
//             // bottom: AppBar(
//             //     actions: [FloatingActionButton(onPressed: () {})],
//             //     backgroundColor: Colors.transparent,
//             //     automaticallyImplyLeading: false),
//             title: Text(data['ablumName']),
//             pinned: true,
//             expandedHeight: 250,
//             backgroundColor: const Color.fromARGB(255, 11, 3, 37),
//             flexibleSpace: FlexibleSpaceBar(
              
//               background: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 height: mediaQuery.height,
//                 width: mediaQuery.width,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color.fromARGB(255, 65, 29, 174), Colors.black],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//                 child: Row(children: [
//                   const SongSearchBarLib(),
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       margin: EdgeInsets.only(left: mediaQuery.width * .05),
//                       alignment: Alignment.center,
//                       height: 45,
//                       width: 45,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//                           color: _background,
//                           border: Border.all(
//                               color: const Color.fromARGB(115, 17, 111, 189))),
//                       child: const Text('Sort'),
//                     ),
//                   )
//                 ]),
//               ),
//             ),
//           ),