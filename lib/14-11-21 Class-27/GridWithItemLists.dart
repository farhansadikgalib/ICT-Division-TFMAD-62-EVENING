import 'package:flutter/material.dart';

class GridWithListItems extends StatefulWidget {
  const GridWithListItems({Key? key}) : super(key: key);

  @override
  _GridWithListItemsState createState() => _GridWithListItemsState();
}

class _GridWithListItemsState extends State<GridWithListItems> {

  final List<String> _items = [

    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/two.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/two.jpg',
    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/two.jpg',    'assets/one.jpg',
    'assets/two.jpg',
    'assets/three.jpg',
    'assets/four.jpg',
    'assets/five.jpg',
    'assets/two.jpg',




  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[600],

      appBar: AppBar(

        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
        centerTitle: true,

      ),


      body: SafeArea(child:
      Container(

        padding: EdgeInsets.all(20),

        child: Column(

          children: [

            Container(
              height: 225,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/one.jpg"),fit: BoxFit.cover)

              ),

              child: Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(.2)
                  ],
                  begin: Alignment.bottomRight
                  )

                ),


                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text("Farhanz Kingdom",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white)),

                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(child: Text("Click Here",style: TextStyle(color: Colors.grey[900]),)),

                    ),
                    SizedBox(height: 15,),


                  ],


                ),

              ),

            ),

            SizedBox(height: 30,),

            Expanded(child: GridView.count(crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

            children: _items.map((item) => Card(

              color: Colors.transparent,
              elevation: 0,

              child: Container(
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(item),
                  fit: BoxFit.cover,
                  )

                ),
                
                
                child: Transform.translate(offset: Offset(75, -75),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 100,vertical: 100),
                    child: Icon(Icons.eighteen_mp_outlined),

                  ),
                ),


              ),


            )).toList(),

            ))





          ],

        ),

      )),






    );
  }
}
