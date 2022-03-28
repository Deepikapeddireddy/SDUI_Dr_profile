import 'dart:convert';

import 'package:en_dynamic_ui/makeApiCall.dart';
import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/widgets/dynamic/doctor_card_v1.dart';
import 'package:en_dynamic_ui/widgets/dynamic/en_dynamic_parser.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool isLoading = true;
  dynamic responseOptions;

  getDoctorsList() async {
    final HTTPService _httpService = HTTPService();
    try {
      // var response =
      //     await _httpService.getRequest(url: '/sdui/doctors/doctorslist');
      // print(response);
      // dynamic response =
      //     '{"type":"SingleChildScrollView","child":{"type":"Column","crossAxisAlignment":"start","mainAxisAlignment":"start","mainAxisSize":"max","textBaseline":"alphabetic","textDirection":"ltr","verticalDirection":"down","children":[{"type":"Card","color":"ffffffff","shadowColor":"ff2196f3","elevation":10.01,"borderOnForeground":true,"semanticContainer":true,"margin":"10.0,10.0,10.0,10.0,","child":{"type":"Container","alignment":null,"padding":null,"color":null,"margin":null,"constraints":{"width":200.01,"height":20.01},"shape":{"side":{"color":"ff2196f3","width":2.01,"style":1},"borderRadius":"10.0:10.0,10.0:10.0,10.0:10.0,10.0:10.0"},"child":{"type":"Column","children":[{"type":"Row","children":[{"type":"Column","children":[{"type":"Text","textSpan":{"text":"deepika","style":{"color":"#3b342d","fontSize":20.01}}},{"type":"Text","textSpan":{"text":"General Physician","style":{"color":"#62828c","fontSize":15.01}}}]}]}]}}},{"type":"Card","color":"ffffffff","shadowColor":"ff2196f3","elevation":10.01,"borderOnForeground":true,"semanticContainer":true,"margin":"10.0,10.0,10.0,10.0,","child":{"type":"Container","alignment":null,"padding":null,"color":null,"margin":null,"constraints":{"width":200.01,"height":20.01},"shape":{"side":{"color":"ff2196f3","width":2.01,"style":1},"borderRadius":"10.0:10.0,10.0:10.0,10.0:10.0,10.0:10.0"},"child":{"type":"Column","children":[{"type":"Row","children":[{"type":"Column","children":[{"type":"Text","textSpan":{"text":"deepika","style":{"color":"#3b342d","fontSize":20.01}}},{"type":"Text","textSpan":{"text":"General Physician","style":{"color":"#62828c","fontSize":15.01}}}]}]}]}}}]}}';

      // response = jsonDecode(response);
      // String response = cardJson;
      setState(() {
        // responseOptions = EnDynamicJson.fromJson(response);
        isLoading = false;
      });
      // return response;
    } catch (e) {
      print("cooool");
      print(e);
    }
  }

  dynamic optionsFromServer = EnDynamicJson.fromJson({
    "type": "column",
    "model": [
      {
        "fullName": "Eswara Nadh K",
        "speciality": "Cardiologist",
        "likes": "20",
        "experience": "3",
        "review": "2",
        "post": "40",
        "audioIcon": true,
        "videoIcon": true,
      },
      {
        "fullName": "Deepika",
        "speciality": "Dermatologist",
        "likes": "10",
        "experience": "3",
        "review": "2",
        "post": "40",
        "audioIcon": true,
        "videoIcon": false,
      },
      {
        "fullName": "Jithendra",
        "speciality": "Dermatologist",
        "likes": "15",
        "experience": "3",
        "review": "2",
        "post": "40",
        "audioIcon": false,
        "videoIcon": false,
      },
    ],
    "widget": {
      "name": "DoctorCardV1",
      "properties": {
        "hideCallButton": true,
        "hideVideoCallButton": true,
      }
    }
  });

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDoctorsList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: isLoading
          ? const Text("Loading")
          : EnDynamicParser(options: optionsFromServer),
    );
  }
}
