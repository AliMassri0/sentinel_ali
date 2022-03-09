import 'package:flutter/material.dart';
import 'package:sentinel/fakepatients.dart';
import 'package:sentinel/info2.dart';


class Plist extends StatelessWidget {
  const Plist({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Patient List'
          ,style: TextStyle(fontWeight: FontWeight.bold,
           color: Colors.white),),
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.lightBlue,
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  vertical: mediaQueryHeight*0.05,
                  horizontal: mediaQueryWidth*0.05),
                child: Container(
                  decoration: 
                  BoxDecoration(
                  color:  Colors.white, 
                  borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                      //fillColor: Colors.white,
                      suffixIconColor: Colors.lightBlue,
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.sort),
                      hintText: "Search patient ",
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                      enabledBorder: OutlineInputBorder(
                        
                        borderSide: const BorderSide( color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: mediaQueryHeight*0.645,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                  itemCount: pat.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (listViewContext, index) {
                    return Column(
                      children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Info2( pat: pat[index],)));
                                                     
                      },
                      child: Column(
                        
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 0,0, 0),
                            alignment: Alignment.centerLeft,
                            height: mediaQueryHeight*0.087,
                            width: mediaQueryWidth,
                            child: Text(
                            pat[index].name,
                            style: const TextStyle(fontSize: 15,
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
       ],);
                    }
      ),
    )]))); 
  }     
}