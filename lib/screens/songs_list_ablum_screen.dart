import 'package:flutter/material.dart';

import '../classes/ablums.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(data['ablumName']),
            pinned: true,
            expandedHeight: 250,
            backgroundColor: const Color.fromARGB(255, 11, 3, 37),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Container(
                    child: Column(children: [
                      ///
                      ///

                      Container( 
                        child: Row(),
                      )

                      ///
                      ///
                    ]),
                    padding: const EdgeInsets.only(top: 30),
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
                  )
                ],
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


//  Stack(
//         children: [
        

//           //
//           SingleChildScrollView(
//             child: Container(),
//           ),
//         ],
//       ),