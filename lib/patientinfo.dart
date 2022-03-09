import 'package:flutter/material.dart';
import 'package:sentinel/navigationBar.dart';
import 'package:sentinel/patients.dart';
class Info extends StatelessWidget {
  Patients pat;
   Info({required this.pat});

  @override
  Widget build(BuildContext context, ) {
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
        backgroundColor: const Color.fromRGBO(237, 11, 25, 1),
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
                        Column(
                          children: [
                            SizedBox(
                              height: mediaQueryHeight*0.05,
                            ),
                            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: mediaQueryHeight*0.3,
                width: mediaQueryWidth*0.4,
                child: Column(
                children:[ 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 0, 0, 40),
                    child: Row(
                      children: [
                        const Text('Blood Oxygen   '),
                       Image.asset('assets/images/11.png'),
                      ],
                    ),
                  ),
                  
                 Text(pat.oxygen, style: const TextStyle(
                    color: Colors.red, fontSize: 40, fontWeight: FontWeight.w900
                  ),),
                  
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: Text('1 hour ago', style: TextStyle(
                          color: Colors.grey, fontSize: 13
                        )),
                  ),
                ]
                ),
              ),
              SizedBox(
                height: mediaQueryHeight*0.3,
                width: mediaQueryWidth*0.4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 0, 0, 40),
                      child: Row(
                        children:  [
                          const Text('Blood Pressure    '),
                          Image.asset('assets/images/22.png'),
                        ],
                      ),
                    ),
                    Text(pat.pressure, style:  const TextStyle(
                      color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.w900
                    ),),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                      child: Text('2 hour ago', style: TextStyle(
                          color: Colors.grey, fontSize: 13
                        )),
                    ),
                  ],
                ),
              ),
            ],
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               SizedBox(
                 height: mediaQueryHeight*0.3,
                width: mediaQueryWidth*0.4,
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.fromLTRB(40, 0, 0, 40),
                       child: Row(
                         children:  [
                            const Text('Body Temperature   '),
                            Image.asset('assets/images/33.png'),
                         ],
                       ),
                     ),
                     Text(pat.temp, style: const TextStyle(
                        color: Colors.green, fontSize: 40, fontWeight: FontWeight.w900
                      ),),
                      
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text('4 hour ago', style: TextStyle(
                          color: Colors.grey, fontSize: 13
                        )),
                      ),
                   ],
                 ),
               ),
          SizedBox(
            height: mediaQueryHeight*0.3,
            width: mediaQueryWidth*0.4,
            child: Column(
              children:  [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 40),
                  child: Row(
                    children: [
                      const Text('Heart Rate   '),
                      Image.asset('assets/images/44.png'),
                    ],
                  ),
                ),
                 Text(pat.rate, style:const TextStyle(
                        color: Colors.green, fontSize: 40, fontWeight: FontWeight.w900
                      ),),
                      const Padding(
                        padding:  EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child:  Text('3 hour ago', style:  TextStyle(
                          color: Colors.grey, fontSize: 13
                        )),
                      ),
              ],
            ),
          ),
             ],
           ),
                          ],
                        ),
                        Icon(Icons.directions_bike),
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
     
   
   