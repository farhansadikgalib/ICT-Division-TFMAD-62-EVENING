import 'package:flutter/material.dart';
import 'package:registrationpage_evening/07-11-21%20class-25/ContactsDataView.dart';

class Contactlist extends StatefulWidget {
  const Contactlist({Key? key}) : super(key: key);

  @override
  _ContactlistState createState() => _ContactlistState();
}

class _ContactlistState extends State<Contactlist> {

  final List contacts_data =[

    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },
    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },    {
      "name": "Farhan",
      "phone": "01773076754",
    },
    {
      "name": "Helal",
      "phone": "01415215252",
    },
    {
      "name": "Sagor",
      "phone": "0148524152",
    },
    {
      "name": "aashek",
      "phone": "0105241522",
    },
    {
      "name": "abdullah",
      "phone": "75410410",
    },
    {
      "name": "Galib",
      "phone": "5745241",
    },


    {
      "name": "hi there",
      "phone": "052152052",

    }


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(title: Text("Contact List"),centerTitle: true,),
        body: ListView.builder(
            itemCount: contacts_data.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(

                children: [

                  ListTile(

                    leading: CircleAvatar(
                      child: Text(contacts_data[index]["name"][0]),
                    ),
                    title: Text(contacts_data[index]["name"]),
                    subtitle: Text(contacts_data[index]["phone"]),
                    onTap: (){
                      Route route = MaterialPageRoute(
                          builder: (context) =>
                              ContactsDataView(contacts_data[index]));

                      Navigator.push(context, route);

                    },


                  )


                ],



              );
            }));
  }
}
