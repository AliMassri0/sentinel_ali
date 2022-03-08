import 'package:flutter/material.dart';
import 'package:sentinel/patients.dart';
import 'package:sentinel/priority.dart';

class Info extends StatelessWidget {
  Patients pat;
   Info({required this.pat});

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        toolbarHeight: mediaQueryHeight*0.2,
        actions:[
          IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const Priority()));
          }, icon: const Icon(Icons.close))
        ],
        backgroundColor: const Color.fromRGBO(237, 11, 25, 1),
        title: Text(pat.name, style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:  TabBar(
        labelColor: Colors.white,
        tabs: [
          Container(
            alignment: Alignment.center,
            height: mediaQueryHeight*0.1,
            child: const Text('General Info', style:
             TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)),
           Container(
            alignment: Alignment.center,
            height: mediaQueryHeight*0.1,
            child: const Text('Tracking Info', style:
             TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)),
           Container(
            alignment: Alignment.center,
            height: mediaQueryHeight*0.1,
            child: const Text('Historical Health', style:
             TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
        ],
      ),
      // body: const TabBarView(
      //       children: [
      //         Icon(Icons.directions_car),
      //         Icon(Icons.directions_transit),
      //         Icon(Icons.directions_bike),
      //       ],
      //     ),
    ),
  ),
);
  }
}