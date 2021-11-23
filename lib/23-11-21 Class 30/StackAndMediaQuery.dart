import 'package:flutter/material.dart';

class SackAndMediaQuery extends StatefulWidget {
  const SackAndMediaQuery({Key? key}) : super(key: key);

  @override
  _SackAndMediaQueryState createState() => _SackAndMediaQueryState();
}

class _SackAndMediaQueryState extends State<SackAndMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Stack(

          alignment: Alignment.bottomCenter,
          overflow: Overflow.visible,

          children: [

            Card(
              color: Colors.green,

              child: SizedBox(
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,


              ),



            ),

            Positioned(
                top: -30,
                child: CircleAvatar(backgroundColor: Colors.red,radius: 70,)),


        Positioned(
            left: -10,
            child: CircleAvatar(backgroundColor: Colors.red,radius: 70,))


          ],


        ),
      ),



    );
  }
}
