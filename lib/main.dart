import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Weather ForeCast'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0,
        ),
        body: _bodyBuilder(),
      ),
    );
  }


}
Widget _bodyBuilder() {
  return Column(
    children: [
      Padding(child: _textField(), padding: EdgeInsets.all(20),),
      _cityDetail(),
      Padding(padding: EdgeInsets.all(25)),
      _temperatureDetail(),
      Padding(padding: EdgeInsets.only(top: 50)),
      _extraWeatherDetail(),
      Padding(padding: EdgeInsets.only(top: 50)),

      Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      _bottomDetail(),
    ],
  );
}

Widget _textField() {
  return Row(
    children: [
      Icon(Icons.search, color: Colors.white,),
      Padding(padding: EdgeInsets.only(right: 10)),
      Text(
        'Enter City Name',
        style: TextStyle(color: Colors.white, fontSize: 16),
      )
    ],
  );
}

Widget _cityDetail() {
  return Column(
    children: [
      Text(
        'Murmansk Oblast, RU',
        style: TextStyle(color: Colors.white, fontSize: 35),
      ),
      Padding(padding: EdgeInsets.all(7)),
      Text(
        'Friday, Mar 20, 2020',
        style: TextStyle(
            color: Colors.white,
            fontSize: 17
        ),
      )
    ],
  );
}

Widget _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            size: 30,
            color: Colors.white,
          ),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    ],
  );
}

Widget _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.wb_sunny,
        size: 80,
        color: Colors.white,
      ),
      Padding(padding: EdgeInsets.only(right: 20)),
      Column(
        children: [
          Text(
            '14 °F',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      )
    ],
  );
}

Widget _bottomDetail() {
  return Container(
    height: 130,
    child: ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: false,

      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              color: Colors.white24,
              child: Column(
                children: [
                  Text('Friday', style: TextStyle(color: Colors.white, fontSize: 26),textAlign: TextAlign.center,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('6 F', style: TextStyle(fontSize: 35, color: Colors.white),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Icon(Icons.wb_sunny, color: Colors.white, size: 40,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 8)),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              color: Colors.white24,
              child: Column(
                children: [
                  Text('Friday', style: TextStyle(color: Colors.white, fontSize: 26),textAlign: TextAlign.center,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('6 F', style: TextStyle(fontSize: 35, color: Colors.white),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Icon(Icons.wb_sunny, color: Colors.white, size: 40,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 8)),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 150,
              color: Colors.white24,
              child: Column(
                children: [
                  Text('Friday', style: TextStyle(color: Colors.white, fontSize: 26),textAlign: TextAlign.center,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('6 F', style: TextStyle(fontSize: 35, color: Colors.white),),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Icon(Icons.wb_sunny, color: Colors.white, size: 40,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 8)),
      ],
    ),
  );
}
