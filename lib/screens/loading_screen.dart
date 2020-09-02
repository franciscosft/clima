import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

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
    print(location.latitude);
    print(location.longitude);
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
