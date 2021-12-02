import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;


class WeatherWithAPI extends StatefulWidget {
  const WeatherWithAPI({Key? key}) : super(key: key);

  @override
  _WeatherWithAPIState createState() => _WeatherWithAPIState();
}

class _WeatherWithAPIState extends State<WeatherWithAPI> {

var location,temp,status,min,max,wind,press,hum,sunrise,sunset;

Future getSunriseSunset() async{
  final response = await http.get(Uri.parse('https://api.sunrise-sunset.org/json?lat=36.7201600&lng=-4.4203400'));
  var showSunData = jsonDecode(response.body);

  setState(() {

    this.sunrise = showSunData['results']['sunrise'];
    this.sunset = showSunData['results']['sunset'];


  });


}


Future getWeatherData() async{

  final response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=DINAJPUR&units=metric&appid=5a57dcbf2289448493158ffba84bb1e0'));

  var showData = jsonDecode(response.body);

  setState(() {


    this.location = showData['name'];
    this.temp = showData['main']['temp'];

    this.min = showData['main']['temp_min'];

    this.max = showData['main']['temp_max'];

    this.press = showData['main']['pressure'];

    this.hum = showData['main']['humidity'];

    this.wind = showData['wind']['speed'];

    this.status =showData['weather'][0]['main'];


    // this.status



  });



}



@override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getWeatherData();
    this.getSunriseSunset();

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,

      appBar: AppBar(

        title: Text("Open Weather"),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),


      body: Column(

        children: [

          Container(
            height: MediaQuery.of(context).size.height/3,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepOrange,

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    FaIcon(FontAwesomeIcons.locationArrow,color: Colors.white,),
                      SizedBox(width: 10,),

                      Text("Your Current Location is ",style: TextStyle(color: Colors.white),),
                      Text(location != null ? location.toString():"ulatpur",style: TextStyle(color: Colors.white),),



                    ],

                  ),

                  SizedBox(height: 15,),

                  Text(temp != null ? temp.toString()+"\u00B0 C":"30",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),

                  SizedBox(height: 15,),

                  Text(status != null ? status.toString():"rainy",style: TextStyle(color: Colors.white),)



                ],

              ),
            ),


          ),




          Expanded(child: ListView(

            children: [

              ListTile(
                leading: FaIcon(FontAwesomeIcons.temperatureLow,color: Colors.white,),
                title: Text("Minimum Temperature",style: TextStyle(color: Colors.white),),
                trailing: Text(max != null ? max.toString()+"\u00B0 C":"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.temperatureHigh,color: Colors.white,),
                title: Text("Maximum Temperature",style: TextStyle(color: Colors.white),),
                trailing: Text(max != null ? max.toString()+"\u00B0 C":"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.superpowers,color: Colors.white,),
                title: Text("Pressure",style: TextStyle(color: Colors.white),),
                trailing: Text(press != null ? press.toString()+"Pa":"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.thermometerEmpty,color: Colors.white,),
                title: Text("Humidity",style: TextStyle(color: Colors.white),),
                trailing: Text(hum != null ? hum.toString()+"k":"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.wind,color: Colors.white,),
                title: Text("Wind Speed",style: TextStyle(color: Colors.white),),
                trailing: Text(wind != null ? wind.toString()+"km/H":"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.cloudSunRain,color: Colors.white,),
                title: Text("Sunrise",style: TextStyle(color: Colors.white),),
                trailing: Text(sunrise != null ? sunrise.toString():"20",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),
              ListTile(
                leading: FaIcon(FontAwesomeIcons.cloudSun,color: Colors.white,),
                title: Text("Sunset",style: TextStyle(color: Colors.white),),
                trailing: Text(sunset != null ? sunset.toString():"002",style: TextStyle(color: Colors.white),),
                tileColor: Colors.deepOrangeAccent,



              ),




            ],



          ))







        ],


      ),


    );
  }
}
