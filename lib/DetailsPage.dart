
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  var url;
  var name;
  var location;

  DetailsPage(this.url, this.name, this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
              tag: 'box-${location}',

              child: Material(
                child: Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(url),fit: BoxFit.cover),
                  ),

                  child: Padding(
                      padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: 300.0,),

                      Text(name,style: TextStyle(fontSize: 34.0,color: Colors.white,fontWeight: FontWeight.w800),),


                      Text(location,style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.w400),),

                    ],
                  ),
                  ),

                ),
              )),

          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 10.0),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: Colors.blueGrey,size: 42.0,)),
          ),
        ],
      ),
    );
  }
}
