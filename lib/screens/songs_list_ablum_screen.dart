import 'package:flutter/material.dart';

import '../classes/ablums.dart';

const Color _background = Color.fromRGBO(255, 255, 255, 0.1);

class AblumSongList extends StatelessWidget {
  AblumSongList({
    Key? key,
  }) : super(key: key);
  static const routeName = '/ablumSongList';
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

      // floatingActionButton: FloatingActionButton(onPressed: () {}),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // bottom: AppBar(
            //     actions: [FloatingActionButton(onPressed: () {})],
            //     backgroundColor: Colors.transparent,
            //     automaticallyImplyLeading: false),
            title: Text(data['ablumName']),
            pinned: true,
            expandedHeight: 250,
            backgroundColor: const Color.fromARGB(255, 11, 3, 37),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: mediaQuery.height,
                width: mediaQuery.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 65, 29, 174), Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Row(children: [
                  const SongSearchBarLib(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(left: mediaQuery.width * .05),
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _background,
                          border: Border.all(
                              color: const Color.fromARGB(255, 26, 96, 153))),
                      child: const Text('Sort'),
                    ),
                  )

                  ///
                  ///
                ]),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
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
          )
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
