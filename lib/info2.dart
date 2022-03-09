import 'package:flutter/material.dart';
import 'package:sentinel/navigationBar.dart';
import 'package:sentinel/patients.dart';
class Info2 extends StatelessWidget {
  Patients pat;
   Info2({required this.pat});

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
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const NavBar()));
          }, icon: const Icon(Icons.close))
        ],
        backgroundColor: Colors.lightBlue,
        title: Text(pat.name, style: const TextStyle(fontWeight: FontWeight.bold),),
      ),
      body:  
           DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                Material(
                    color: Colors.white,
                    child: TabBar(
                    tabs: [
                Container(
                alignment: Alignment.center,
                height: mediaQueryHeight*0.1,
                child: const Text('General Info', style:
                 TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                 ),
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
                    )),
                 Expanded(
                  flex: 1,
                  child: Container(
                    width: mediaQueryWidth*0.9,
                    child: TabBarView(
                      children: [
                        Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('DOB', style: TextStyle(color: Colors.grey),),
                            Text(pat.dob, style: const TextStyle(fontWeight: FontWeight.bold),),
                            const Text('Admission Date', style: TextStyle(color: Colors.grey),),
                            Text(pat.adDate, style: const TextStyle(fontWeight: FontWeight.bold),),
                            const Text('Drugs/prescriptions', style: TextStyle(color: Colors.grey),),
                            Text(pat.drugs, style: const TextStyle(fontWeight: FontWeight.bold),),
                            const Text('Gender', style: TextStyle(color: Colors.grey),),
                            Text(pat.gender, style: const TextStyle(fontWeight: FontWeight.bold),),
                            const Text('Scheduled Release Date', style: TextStyle(color: Colors.grey),),
                            Text(pat.dob, style: const TextStyle(fontWeight: FontWeight.bold),),
                            const Text('Main Notes', style: TextStyle(color: Colors.grey),),
                            Text(pat.notes, style: const TextStyle(fontWeight: FontWeight.bold),),

                          ],
                        ),
                        const Center(
                          child: Text('No Info to show', style: 
                          TextStyle(color: Colors.grey, fontSize: 20),),
                          ),
                       const Center(
                          child: Text('No Info to show', style: 
                          TextStyle(color: Colors.grey, fontSize: 20),),
                          ),
                      ],
                    ),
                  ),
                )
              ],
          
     
   
    ),
  ),
)));
  }
}