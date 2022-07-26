import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/widgets/library_appbar_circles.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              IconButton(onPressed: () {}, icon: const Icon(Icons.list))
            ],
          ),
        )),




        /// create if block if on list of grid 
      
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
              title: Center(
                child: Text('$index',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 50,
                        color: Colors.greenAccent[400]) //TextStyle
                    ), //Text
              ), //Center
            ), //ListTile
            childCount: 51,
          ),
        )
      ]),
    );
  }
}
