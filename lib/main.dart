
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/CardWidget.dart';
import 'package:travel_app/DetailsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Here I will import a list of Image Url
 List<String> imgUrl = [

   'https://www.bdembassybeijing.org/wp-content/uploads/2017/09/Rangamati-750x450.jpg',
   'https://i.pinimg.com/originals/79/46/72/7946721a34b4ed736bb730a70b99f9b7.png',
   'https://lifebeyondnumbers.com/wp-content/uploads/2017/05/must-visit-places-bangladesh.png',
   'https://nijhoom.b-cdn.net/wp-content/uploads/2019/07/saint-martins-island-wikipedia-600-gtm.jpg',
   'https://secure.jetliatravels.com/uploads/cox-bazar-for-blog.jpg',
   'http://s3.amazonaws.com/themorning-aruna/wp-content/uploads/2021/05/30025028/Main-pic2.jpg',
   'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Shiva_Temple%2C_Puthia%2C_Rajshahi_NK_%281%29.jpg/385px-Shiva_Temple%2C_Puthia%2C_Rajshahi_NK_%281%29.jpg',

 ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
        title: Text('Travel App',style: TextStyle(color: Colors.black),),
      ),

      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text('Welcome Torab Code',style: TextStyle(fontSize: 28.0,fontWeight: FontWeight.w800),),
            
            SizedBox(height: 10.0,),
            Text('Chose Your Next Destination',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w400),),
            
            SizedBox(height: 80.0,),
            Text('Top Destination',style: TextStyle(fontSize: 28.0,),),


            SizedBox(height: 20.0,),
            CarouselSlider(
              //Now let's create our custom card for this project
              //Now let's create the details page of our app
              //Now let's add some more card
                items: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[0], 'Beach', 'Coxs Bazar')));
                    },
                    
                      child: cardShape(imgUrl[0], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[1], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[1], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[2], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[2], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[3], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[3], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[4], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[4], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[5], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[5], 'Beach', 'Coxs Bazar'),
                  ),


                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage(imgUrl[6], 'Beach', 'Coxs Bazar')));
                    },

                    child: cardShape(imgUrl[6], 'Beach', 'Coxs Bazar'),
                  ),

                ],

                options: CarouselOptions(
                  height: 400.0,
                  enableInfiniteScroll: false,
                  initialPage: 1,
                )
            )
          ],
        ),
      ),
    );
  }
}


