import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print("Printing the location before init");
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    location.getLocation();
    getData();
  }

  void getData() async {
    http.Response response = await http.get(
        "https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=439d4b804bc8187953eb36d2a8c26a02");
    print(response.body);
    print(response.statusCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          child: Text('Geo'),
          backgroundColor: Colors.red,
          onPressed: () {
            print('Ação');
          },
        ),
      ),
    );
  }
}
