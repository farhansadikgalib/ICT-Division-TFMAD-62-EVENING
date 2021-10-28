import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registrationpage extends StatefulWidget {
  const Registrationpage({Key? key}) : super(key: key);

  @override
  _RegistrationpageState createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      backgroundColor: Colors.cyan,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(


            children: [

              SizedBox(height: 100,),

              Text("Registration Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

              SizedBox(height: 30,),

              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(

                    child: Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Column(


                  children: [

                      TextFormField(

                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Name',

                        ),


                      ),
                      TextFormField(

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Email Address',

                        ),


                      ),
                      TextFormField(

                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Phone',

                        ),


                      ),
                      TextFormField(

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Enter Your Password',

                        ),


                      ),



                    DropdownButtonFormField(
                        hint: Text('Select Your Gender'),

                        onChanged: (val){
                          setState(() {
                            print(val);

                          });
                        },
                        items: [

                      DropdownMenuItem(child: Text("Male"),
                      value: 'male',
                      ),
                      DropdownMenuItem(child: Text("Female"),
                      value: 'female',
                      ),


                    ]),




                    SizedBox(height: 30,),






                    RaisedButton(onPressed: (){},color: Colors.green,child: Text("Sign UP"),)






                  ],



                ),
                    )),
              )






            ],

          ),
        ),
      ),




    );
  }
}
