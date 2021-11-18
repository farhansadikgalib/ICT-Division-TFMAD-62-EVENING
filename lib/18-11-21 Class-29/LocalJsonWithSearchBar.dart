import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalJsonWithSearchbar extends StatefulWidget {
  const LocalJsonWithSearchbar({Key? key}) : super(key: key);

  @override
  _LocalJsonWithSearchbarState createState() => _LocalJsonWithSearchbarState();
}

class _LocalJsonWithSearchbarState extends State<LocalJsonWithSearchbar> {


  late List readyData;
  late List unfilterData;


  Future<String> loadJsonData()async{

    var jsonText = await rootBundle.loadString("assets/localJson.json");

    setState(() {
      readyData = jsonDecode(jsonText);
    });
    this.unfilterData = readyData;


    return "successfully get data";
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.loadJsonData();

  }


  searchBar(str) {
    var stringExist = str.length > 0 ? true : false;

    if (stringExist) {
      var filterData = [];

      for (int i = 0; i < unfilterData.length; i++) {
        String name = unfilterData[i]['name'].toUpperCase();

        if (name.contains(str.toUpperCase())) {
          filterData.add(unfilterData[i]);
        }

        setState(() {
          this.readyData = filterData;
        });
      }
    } else {
      setState(() {
        this.readyData = unfilterData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Local Json With SearchBar"),
        centerTitle: true,
      ),


      body: Column(

        children: [

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Contacts',
                icon: Icon(Icons.search)

              ),

              onChanged: (String str){
                this.searchBar(str);
                print(str);
              },


            ),
          ),


          Expanded(child: ListView.builder(

              itemCount: readyData.length,
              itemBuilder:(BuildContext context,int index){
                return Column(

                  children: [

                    ListTile(

                      leading: CircleAvatar(
                        child: Text(readyData[index]['name'][0]),

                      ),
                      title: Text(readyData[index]['name']),
                      subtitle: Text(readyData[index]['phone']),



                    )


                  ],

                );


              }))


        ],

      ),



    );
  }
}
