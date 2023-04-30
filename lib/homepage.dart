import 'package:flutter/material.dart';
import 'package:weather_api/search.dart';
import 'package:weather_api/model.dart';
import 'package:weather_api/apiservice.dart';
class Home extends StatefulWidget {
  String search;
   Home(this.search);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Weatherdata weather = new Weatherdata();
  store storeweather = new store();
  @override
  void initState(){
    super.initState();
    getWeather();
  }
  void getWeather()async {
    storeweather = await weather.getWeatherdata(widget.search);
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/weathersky.jpg'),
        fit: BoxFit.cover),
      ),
      child: Scaffold(
       backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Text(storeweather.time,style: TextStyle(color: Colors.white70,fontSize: 18),),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.search,color: Colors.white70,size: 30,),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(widget.search,style:
                  TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(storeweather.conditions,style:
                  TextStyle(color: Colors.white70,fontSize: 28),),
                ),
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(image:
                  NetworkImage("http:${storeweather.conditionIcon.toString()}"))
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('${storeweather.temp_c}',style:
                  TextStyle(color: Colors.white,fontSize: 90),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30,bottom: 10),
                child: Text('weather details',style:
                TextStyle(color: Colors.white70
                    ,fontSize: 20),),
              ),
              GridView(
                shrinkWrap: true,
                  physics: ScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 10/6
                  ),
              children: [
                Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    children: [
                      Text('lattitude',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.lat}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    children: [
                      Text('longitude',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.lon
                      }',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('feels like',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.feels}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('fahrenheit',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.temp_f}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('humidity',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.humidity}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('wind',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.wind}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('visibility',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.visibility}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.6)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('pressure',style: TextStyle(color: Colors.white70,fontSize: 20),),
                      Text('${storeweather.presseure}',style: TextStyle(color: Colors.white70,fontSize: 30),)
                    ],
                  ),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
