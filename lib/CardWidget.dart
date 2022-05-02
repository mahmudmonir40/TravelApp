

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cardShape (String imgUrl, String name, String location){
  return Hero(
      tag: 'box_${location}',

      child: Material(
        color: Colors.transparent,

        child: ClipPath(
          clipper: MyClipper(),

          child: Container(
            height: 300.0,
            width: 220.0,

            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(imgUrl),fit: BoxFit.cover),
            ),
            
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(name,style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.w800),),

                  Text(location,style: TextStyle(fontSize: 22.0,color: Colors.white),),
                ],
              ),
            ),
          ),
        ),
      )
  );
}


//Now we need to create our custom clip path
class MyClipper extends CustomClipper <Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    //Now let's add some rounders to our clip
    var round = 40.0;
    //to add roundeness in flutter we will use quadratic beizer curve
    //Now let's create our custom shape

    path.moveTo(round * 2, round * 2);
    path.quadraticBezierTo(0, round * 3, 0, round * 4);
    path.lineTo(0, size.height - round);
    path.quadraticBezierTo(0, size.height, round, size.height);
    path.lineTo(size.width - round, size.height);
    path.quadraticBezierTo(size.width, size.height, size.width, size.height - round);
    path.lineTo(size.width, round * 1.5);
    path.quadraticBezierTo(size.width, 0, round * 2, round * 2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}