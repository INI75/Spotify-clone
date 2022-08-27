import 'package:flutter/material.dart';

import '../classes/ablums.dart';

const Color _background = Color.fromRGBO(255, 255, 255, 0.1);

class AblumSongList extends StatefulWidget {
  AblumSongList({
    Key? key,
  }) : super(key: key);
  static const routeName = '/ablumSongList';

  @override
  State<AblumSongList> createState() => _AblumSongListState();
}

class _AblumSongListState extends State<AblumSongList> {
  late String title;

  ///
  ///   dummy data
  // ignore: prefer_final_fields
  bool _listview = true;

  List<AblumObject> _ablums = [
    AblumObject(
      ablumName: 'ablue',
      ablumArtist: 'lumArtist',
      image: 'ima',
      list: true,
    ),
    AblumObject(
      ablumName: 'abName',
      ablumArtist: 'mArtist',
      image: 'imae',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumNe',
      ablumArtist: 'ablumArtt',
      image: 'iage',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumme',
      ablumArtist: 'abmArtist',
      image: 'age',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
    AblumObject(
      ablumName: 'abName',
      ablumArtist: 'mArtist',
      image: 'imae',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumNe',
      ablumArtist: 'ablumArtt',
      image: 'iage',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumme',
      ablumArtist: 'abmArtist',
      image: 'age',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
    AblumObject(
      ablumName: 'ablumName',
      ablumArtist: 'ablumArtist',
      image: 'image',
      list: true,
    ),
  ];

  ///
  ///
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                collapsedHeight: 60,

                // collapsedHeight: 80,
                title: Text(data['ablumName']),
                pinned: true,
                expandedHeight: 250,
                actions: [
                  Transform.translate(
                    offset: Offset(mediaQuery.width * .4, 20),
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Icon(Icons.play_arrow),
                    ),
                  )
                ],
                // bottom:
                backgroundColor: const Color.fromARGB(255, 11, 3, 37),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: mediaQuery.height,
                    width: mediaQuery.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 65, 29, 174),
                          Colors.black
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: PreferredSize(
                      preferredSize: Size.fromHeight(100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 90),
                          Row(children: [
                            const SongSearchBarLib(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: mediaQuery.width * .05),
                                alignment: Alignment.center,
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: _background,
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            115, 17, 111, 189))),
                                child: const Text('Sort'),
                              ),
                            )
                          ]),
                          const SizedBox(height: 49),
                          const Text(
                            'Liked Songs',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return InkWell(
                      onTap: () {
                        
                      },
                      // onTap: () {
                      //   Navigator.of(context)
                      //       .pushNamed(AblumSongList.routeName, arguments: {
                      //     'ablumName': _ablums[index].ablumName,
                      //     'ablumArtist': _ablums[index].ablumArtist,
                      //     'image': _ablums[index].image,
                      //     'list': _ablums[index].list = _listview,
                      //   });
                      // },
                      child: AblumObject(
                          ablumName: _ablums[index].ablumName,
                          ablumArtist: _ablums[index].ablumArtist,
                          image: _ablums[index].image,
                          list: _ablums[index].list = _listview),
                    );
                  },
                  childCount: _ablums.length,
                ),
              ),
            ],
          ),

          //
        ],
      ),
    );
  }
}

class SongSearchBarLib extends StatelessWidget {
  const SongSearchBarLib({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _background,
          border: Border.all(color: const Color.fromARGB(255, 26, 96, 153))),
      height: 45,
      width: mediaQuery.width * .7,
      child: const TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
//hintStyle: TextStyle(color: Colors.white),
              hintText: 'Find in liked songs',
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ))),
    );
  }
}

////
class CustumAppBar extends SliverPersistentHeaderDelegate {
  final Size mediaQuery;

  CustumAppBar(this.mediaQuery);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Transform.translate(
      offset: Offset(mediaQuery.width * .4, 20),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  double get maxExtent => 10;

  @override
  double get minExtent => 10;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

////
///
