import 'package:flutter/material.dart';
import 'package:practice04/app_home.dart';
class WelcomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _WelcomePage();
  }
}

class _WelcomePage extends State<WelcomePage>{

  void getLocationData() async {
    //var weatherData = await WeatherModel().getLocationWeather();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return AppHome(
        //locationWeather: weatherData,
      );
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2),(){
      getLocationData();
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Text("")),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image(image: AssetImage("images/bluesky.jpg")),
                  Text("Welcome To Weather App",style: TextStyle(fontSize: 26,color: Colors.blue,fontStyle: FontStyle.italic))
                ],
              )),
          ],
        )
      ),
    );
  }
}
