import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/widgets/app_bar_icons.dart';
import 'package:spotify/widgets/home_ablum_gridview.dart';
import 'package:spotify/widgets/home_discover_something-new.dart';
import 'package:spotify/widgets/home_new_relase.dart';

class HomeSelected extends StatelessWidget {
  const HomeSelected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 31, 12, 87), Colors.black],
                begin: Alignment.topLeft,
                end: Alignment(-.8, -.45)),
          ),
        ),

        //
        SingleChildScrollView(
          child: Container(
            width: mediaQuery.width,
            //   height: mediaQuery.height + 200,
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(children: [
              const SizedBox(height: 50),
              // app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Good Morning',
                      style: GoogleFonts.openSans(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    child: Row(children: [
                      HomeAppBarIcons(
                          icon: 'Notification.png', function: () {}),
                      HomeAppBarIcons(icon: 'Recents.png', function: () {}),
                      HomeAppBarIcons(icon: 'Settings.png', function: () {}),
                    ]),
                  )
                ],
              ),
              const HomeAlbumGridView(),
              //
              HomeNewRelase(),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Discover something new',
                    style: GoogleFonts.openSans(
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                    )),
              ),

              Container(
                // color: Colors.blue,
                height: 130, margin: const EdgeInsets.only(top: 17, left: 20),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context, index) => HomeDiscoverItem())),
              )
            ]),
          ),
        ),
      ],
    );
  }
}
