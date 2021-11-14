import 'package:flutter/material.dart';

class GridViewWithCardDesign extends StatefulWidget {
  const GridViewWithCardDesign({Key? key}) : super(key: key);

  @override
  _GridViewWithCardDesignState createState() => _GridViewWithCardDesignState();
}

class _GridViewWithCardDesignState extends State<GridViewWithCardDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),

      body: GridView.count(crossAxisCount: 4,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      padding: EdgeInsets.all(20),
      children: [

        Card(
          elevation: 15,
          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),
        Card(

          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),
        Card(

          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),
        Card(

          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),        Card(

          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),
        Card(

          color: Colors.green,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(Icons.search),
                Text("Search")



              ],
            ),
          ),

        ),





      ],

      ),




    );
  }
}
