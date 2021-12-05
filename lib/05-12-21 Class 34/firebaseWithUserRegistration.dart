import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseWithUserRegistration extends StatefulWidget {
  const FirebaseWithUserRegistration({Key? key}) : super(key: key);

  @override
  _FirebaseWithUserRegistrationState createState() => _FirebaseWithUserRegistrationState();
}

class _FirebaseWithUserRegistrationState extends State<FirebaseWithUserRegistration> {

  final _formkey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  final databaseRef = FirebaseDatabase.instance.reference().child("User Data");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Center(
            child: Column(
              children:<Widget> [
                SizedBox(height: 30,),
                Text("Registration Page",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w700),),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Form(
                       key: _formkey,
                      child:Column(
                        children:<Widget> [
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                            child: TextFormField(
                              controller: nameController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText:'Enter Your Name',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "First enter your Name";
                                }
                                return null;
                              },


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                            child: TextFormField(
                               controller: addressController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText:'Enter Your Address',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "First enter your Address";
                                }
                                return null;
                              },


                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                            child: TextFormField(
                               controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText:'Enter Your Email',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "First enter your Email";
                                }
                                return null;
                              },


                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                            child: TextFormField(
                               controller: phoneController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText:'Enter Your Phone',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "First enter your Phone";
                                }
                                return null;
                              },


                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30,top: 15,bottom: 15),
                            child: TextFormField(
                               controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText:'Enter Your Password',
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  )
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "First enter your Password";
                                }
                                return null;
                              },


                            ),
                          ),



                        ],

                      )


                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [

                    ElevatedButton(onPressed: ()
                    {
                      if(_formkey.currentState!.validate()){


                        databaseRef.push().set({
                          "name": nameController.text,
                          "email": emailController.text,
                          "phone": phoneController.text,
                          "address": addressController.text,
                          "password": passwordController.text,




                        }).then((_){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Registration Successful"),
                          ));
                          nameController.clear();
                          emailController.clear();
                          phoneController.clear();
                          addressController.clear();
                          passwordController.clear();

                        }).catchError((onError){

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Registration Failed"),
                          ));
                        });
                      }


                    }, child: Text("Sign UP")),


                  ],

                )



              ],



            ),
          ),
        ),
      ),





    );
  }



}
