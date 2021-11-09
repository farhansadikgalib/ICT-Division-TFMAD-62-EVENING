import 'dart:developer';

import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class LibraryWithText extends StatefulWidget {
  const LibraryWithText({Key? key}) : super(key: key);

  @override
  _LibraryWithTextState createState() => _LibraryWithTextState();
}

class _LibraryWithTextState extends State<LibraryWithText> {

  bool checkboxSelected = false;
  bool switchSelected = false;
  bool radioSelected = false;
  bool iconSelected = false;

  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            
            Expandable(
              primaryWidget: Container(
                child:Center(child: GlowText("Hi There!",glowColor: Colors.orangeAccent,))

                
              ),
              secondaryWidget: Column(
                
                children: [
                  
                  Text("I am a student, software engineer, and volunteer currently living in Dhaka, Bangladesh. My interests range from technology to programming. I am also interested in web development, gaming, and innovatio")
                  
                  
                ],
                
              ),
              animationDuration: Duration(seconds: 2),
              showArrowIcon: true,

            ),


            GlowText("Hi There!",glowColor:Colors.cyan,style: TextStyle(color: Colors.cyan,fontSize: 35),),

            GlowButton(child: GlowText("Glowing Button",style: TextStyle(fontSize: 12,),glowColor: Colors.white,), onPressed: (){},color: Colors.cyan,),


            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GlowButton(
                  onPressed: () {},
                  color: Colors.cyan,
                  child: Text('Glow'),
                ),
                SizedBox(height: 32),
                GlowCheckbox(
                  value: checkboxSelected,
                  enable: true,
                  color: Colors.cyan,
                  onChange: (bool value) {
                    setState(() {
                      checkboxSelected = !checkboxSelected;
                    });
                  },
                ),
                SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      iconSelected = !iconSelected;
                    });
                  },
                  child: GlowIcon(
                    iconSelected ? Icons.wb_cloudy : Icons.cloud_queue,
                    color: Colors.cyan,
                    glowColor: iconSelected ? Colors.cyan : Colors.transparent,
                    size: 64,
                    blurRadius: 9,
                  ),
                ),
                SizedBox(height: 32),
                GlowText(
                  'Glow Text',
                  style: TextStyle(fontSize: 40, color: Colors.cyan),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GlowRadio<bool>(
                      value: true,
                      groupValue: radioSelected,
                      color: Colors.cyan,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                        });
                      },
                    ),
                    SizedBox(width: 32),
                    GlowRadio<bool>(
                      value: false,
                      color: Colors.cyan,
                      groupValue: radioSelected,
                      onChange: (value) {
                        setState(() {
                          radioSelected = value;
                          log(value.toString());
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 32),
                GlowSwitch(
                  onChanged: (value) {
                    setState(() {
                      switchSelected = value;
                    });
                  },
                  value: switchSelected,
                  activeColor: Colors.cyan.withOpacity(0.6),
                  blurRadius: 4,
                ),
                SizedBox(height: 32),
                GlowLineProgress(
                  blurRadius: 12,
                  glowColor: Colors.cyan,
                )
              ],
            ),


          ],


        ),
      ),

    );
  }
}
