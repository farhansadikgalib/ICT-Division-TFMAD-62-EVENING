import 'package:flutter/material.dart';

class RegistrationUI extends StatefulWidget {
  const RegistrationUI({Key? key}) : super(key: key);

  @override
  _RegistrationUIState createState() => _RegistrationUIState();
}

class _RegistrationUIState extends State<RegistrationUI> {


  var _val = 1;

  var formKey= GlobalKey<FormState>();

  var nameController =TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  var name,address,phone,email,password;


  _handleSignUpButton(){

    if(formKey.currentState!.validate()){

      formKey.currentState!.save();

      print("Name:${this.name}");
      print("Address:${this.address}");
      print("Phone:${this.phone}");
      print("Email:${this.email}");
      print("Password:${this.password}");

    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,



      body: Center(
        child: Column(

          children: [

            SizedBox(height: 40,),

            Text(
              "AirBNB's Registration Is Here",
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 40,),


            Form(
                key: formKey,
                child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(

                children: [

                  TextFormField(
                  controller: nameController,
                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(

                      labelText: 'Enter Your Name',
                      hintText: 'Input Your Name',



                    ),

                    onSaved: (value){
                    this.name = value;
                    },

                    validator: (value){
                    if(value!.isEmpty){
                      return ("Please Enter Your Name Here!");
                    }

                    },



                  ),
                  TextFormField(
                    controller: addressController,

                    keyboardType: TextInputType.name,

                    decoration: InputDecoration(

                      labelText: 'Enter Your Address',

                    ),

                      onSaved: (value){
                this.address = value;
                },

                    validator: (value){
                      if(value!.isEmpty){
                        return ("Please Enter Your Address Here!");
                      }

                    },



                  ),

                  TextFormField(
                    controller: phoneController,

                    keyboardType: TextInputType.phone,

                    decoration: InputDecoration(

                      labelText: 'Enter Your Phone Number',

                    ),
                    onSaved: (value){
                      this.phone = value;
                    },

                    validator: (value){
                      if(value!.isEmpty){
                        return ("Please Enter Your Phone Number Here!");
                      }

                    },


                  ),
                  TextFormField(
                    controller: emailController,

                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(

                      labelText: 'Enter Your Email Address',

                    ),

                    onSaved: (value){
                      this.email = value;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return ("Please Enter Your Email Address Here!");
                      }

                    },



                  ),

                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(

                      labelText: 'Enter Your Password',

                    ),
                    onSaved: (value){
                      this.password = value;
                    },

                    validator: (value){
                      if(value!.isEmpty){
                        return ("Please Enter Your Password Here!");
                      }

                    },


                  ),



                  Row(

                    children: [

                      Text("Gender"),

                      Row(
                        children: [
                          Radio(value: 1, groupValue: _val, onChanged: (value){

                            setState(() {
                              value = _val;
                            });


                          }),
                          SizedBox(width: 10,),
                          Text("Male")



                        ],



                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Radio(value: 2, groupValue: _val, onChanged: (value){

                            setState(() {
                              value=_val;
                              print('${_val}');
                            });


                          }),
                          SizedBox(width: 10,),
                          Text("Female")



                        ],



                      )



                    ],



                  ),


                  DropdownButtonFormField(
                      hint: Text("Select Your Age"),

                      onChanged: (value){
                        setState(() {
                          print(value);
                        });

                      },

                      items: [


                    DropdownMenuItem(child: Text("16-18 Years"),
                      value: '16-18',
                    ),
                    DropdownMenuItem(child: Text("18-22 Years"),
                      value: '18-22',
                    ),                    DropdownMenuItem(child: Text("23-30 Years"),
                      value: '23-30',
                    ),                    DropdownMenuItem(child: Text("30-50 Years"),
                      value: '30-50',
                    ),


                  ]),


                  SizedBox(height: 35,),

                  RaisedButton(onPressed: _handleSignUpButton,child: Text("Sign UP Now",style: TextStyle(color: Colors.white),),color: Colors.redAccent,)






                ],
              ),
            ))





          ],

        ),
      ),






    );
  }
}
