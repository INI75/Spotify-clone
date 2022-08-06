import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/widgets/library_appbar_circles.dart';

import '../classes/ablums.dart';
import 'songs_list_ablum_screen.dart';

class Library extends StatefulWidget {
  Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  bool _listview = true;
  // ignore: prefer_final_fields
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.black,
          pinned: true,
          // snap: false,
          floating: false,
          expandedHeight: 120,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
                height: 150,
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: const [
                    LibraryAppBarChoice(text: 'Playlist'),
                    LibraryAppBarChoice(text: 'Ablums'),
                    LibraryAppBarChoice(text: 'Downloaded')
                  ],
                )),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/search_off.png'),
                  size: 19,
                )),
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage('assets/Add.png'),
                  size: 19,
                )),
          ],
          title: Text('Your Library',
              style: GoogleFonts.openSans(fontWeight: FontWeight.bold)),
          leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: const CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/2.png'),
            ),
          ),
        ),

        // Container(
        //     child: Row(
        //   children: [],
        // )),
        SliverToBoxAdapter(
            child: Container(
          padding: const EdgeInsets.all(8),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const ImageIcon(
                        AssetImage('assets/Sort.png'),
                      ),
                      Text(
                        'Most recent',
                        style: GoogleFonts.openSans(fontSize: 11),
                      )
                    ]),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _listview = !_listview;
                    });
                  },
                  icon: _listview
                      ? const Icon(Icons.grid_view)
                      : const Icon(Icons.list))
            ],
          ),
        )),

        /// create if block if on list of grid
// if ablum is null show empty screen

        _listview
            ? SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(AblumSongList.routeName, arguments: {
                          'ablumName': _ablums[index].ablumName,
                          'ablumArtist': _ablums[index].ablumArtist,
                          'image': _ablums[index].image,
                          'list': _ablums[index].list = _listview,
                        });
                      },
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
            : SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return InkWell(
                      onTap: () {
                        // index number for provider
                        Navigator.of(context)
                            .pushNamed(AblumSongList.routeName, arguments: {
                          'ablumName': _ablums[index].ablumName,
                          'ablumArtist': _ablums[index].ablumArtist,
                          'image': _ablums[index].image,
                          'list': _ablums[index].list = _listview,
                        });
                      },
                      child: AblumObject(
                        ablumName: _ablums[index].ablumName,
                        ablumArtist: _ablums[index].ablumArtist,
                        image: _ablums[index].image,
                        list: _ablums[index].list = _listview,
                      ),
                    );
                  },
                  childCount: _ablums.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    //  childAspectRatio: .8,
                    mainAxisExtent: 200))
      ]),
    );
  }
}
