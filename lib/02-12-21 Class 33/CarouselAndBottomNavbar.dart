import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class CarouselAndBottomNavBar extends StatefulWidget {
  const CarouselAndBottomNavBar({Key? key}) : super(key: key);

  @override
  _CarouselAndBottomNavBarState createState() => _CarouselAndBottomNavBarState();
}

class _CarouselAndBottomNavBarState extends State<CarouselAndBottomNavBar> {

 final List<String> imageList =[

   "assets/air.png",
   "assets/one.jpg",
   "assets/two.jpg",
   "assets/three.jpg",
   "assets/four.jpg",
   "assets/five.jpg",


 ];

 Future<bool> _onWillPop() async {
   return (await showDialog(
     context: context,
     builder: (context) =>
     new AlertDialog(
       title: new Text('MAD ICT EVENING'),
       content: new Text('Do you want to exit this App?'),
       actions: <Widget>[
         TextButton(
           onPressed: () => Navigator.of(context).pop(false),
           child: new Text(
             'No',
             style: TextStyle(color: Colors.green[800]),
           ),
         ),
         TextButton(
           onPressed: () => Navigator.of(context).pop(true),
           child: new Text(
             'Yes',
             style: TextStyle(color: Colors.red[800]),
           ),
         ),
       ],
     ),
   )) ?? false;
 }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: _onWillPop,

      child: Scaffold(
        backgroundColor: Colors.grey,

        appBar: GFAppBar(

          title: Text("Carousel & Appbar"),
          centerTitle: true,

        ),

        body: Column(
          children: [


            GFCarousel(
                autoPlay: true,
               reverse: true,
                activeIndicator: Colors.orange,
                passiveIndicator: Colors.white,

                autoPlayAnimationDuration: Duration(seconds: 2),
                items: imageList.map((item) => Container(

                  margin: EdgeInsets.only(left:10,right: 10,top: 30 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),

                image: DecorationImage(image: AssetImage(item),fit: BoxFit.cover)

              ),


            )).toList())



          ],


        ),



      ),
    );
  }
}
