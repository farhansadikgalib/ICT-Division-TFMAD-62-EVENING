import 'package:flutter/material.dart';

class ContactsDataView extends StatefulWidget {

  var showData;

  ContactsDataView(this.showData);



  @override
  _ContactsDataViewState createState() => _ContactsDataViewState(this.showData);
}

class _ContactsDataViewState extends State<ContactsDataView> {

  var showData;
  _ContactsDataViewState(this.showData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Text("Name: ${showData['name']}"),
            Text("Phone: ${showData['phone']}")




          ],

        ),
      ),


    );
  }
}
