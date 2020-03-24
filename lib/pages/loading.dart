import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    Response response = await get('https://worldtimeapi.org/api/timezone/Asia/Kolkata');
    Map data = jsonDecode(response.body);
    print(data);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
