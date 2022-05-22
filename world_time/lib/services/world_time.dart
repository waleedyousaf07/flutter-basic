import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDayTime;

  WorldTime({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    await Future.delayed(Duration(seconds: 3), () {});

    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(data);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      // create a datetime obj
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('Caugth Error! $e');
      time = 'Error: Could not get time data';
    }
  }
}
