import 'package:flutter/material.dart';

class HomeAblumGridItem extends StatelessWidget {
  const HomeAblumGridItem({Key? key}) : super(key: key);
  //// value would come from provider
  ///string
  ///pic
  ///inner values
  ///logic to determine number of pic withing pic 4 squeres

  @override
  Widget build(BuildContext context) { 
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(55, 169, 156, 156),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(5),
        ),
      ),
      width: 150,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset('assets/Art.png'),
          ),
          Container(
            height: 60,
            width: 90,
            alignment: Alignment.center,
            child: const Text('My Ablum dummy',
                overflow: TextOverflow.fade,
                softWrap: true,
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}
