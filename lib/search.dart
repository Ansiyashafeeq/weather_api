import 'package:flutter/material.dart';
import 'package:weather_api/homepage.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
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
          title: TextFormField(
            onChanged: (value){
              search =value;
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              fillColor: Colors.white,
              filled: true,
              hintText: 'search',
                suffixIcon: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  Home(search)));
                },
                  icon: Icon(Icons.search),
            )
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),

      ),
    );

  }
  String search = '';
}
