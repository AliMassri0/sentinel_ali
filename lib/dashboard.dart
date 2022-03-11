
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          Container(
            decoration: 
            BoxDecoration(color: Colors.grey.withOpacity(0.01), 
            borderRadius: BorderRadius.circular(15)),
            height: mediaQueryHeight*0.1,
            width: mediaQueryWidth*0.95,
            
            child:
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                   Text('Total Patients',style:
                   TextStyle(fontWeight: FontWeight.w800, fontSize: 20),),
                   Text('900',style:
                   TextStyle(fontWeight: FontWeight.w800, fontSize: 20),),
                  
            ]
           ),
              ),
          ),
          Padding(padding: EdgeInsets.all(mediaQueryHeight*0.02)),
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
                 const Text('0', style: TextStyle(
                    color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w900
                  ),),
                  const Text('Patients', style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold
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
           
                DottedLine(
                     lineLength: mediaQueryHeight*0.3,
                     direction: Axis.vertical,
                     dashColor: Colors.grey,
                     dashRadius: 30,
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
                    const Text('4', style:  TextStyle(
                      color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w900
                    ),),
                   
                    const Text('Patients', style:  TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold
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
          Padding(padding: EdgeInsets.all(mediaQueryHeight*0.03)),
           Padding(
             padding:  EdgeInsets.only(bottom:mediaQueryHeight*0.07),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 DottedLine(
                           lineLength: mediaQueryWidth*0.45,
                           direction: Axis.horizontal,
                           dashColor: Colors.grey,
                           dashRadius: 50,
                         ),
                          DottedLine(
                       lineLength: mediaQueryWidth*0.45,
                       direction: Axis.horizontal,
                       dashColor: Colors.grey,
                       dashRadius: 50,
                     ),
               ],
             ),
           ),
          
           Padding(
             padding: EdgeInsets.only(bottom: mediaQueryHeight*0.04),
             child: Row(
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
                       const Text('6', style: TextStyle(
                          color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w900
                        ),),
                        const Text('Patients', style:  TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold
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
                  DottedLine(
                       lineLength: mediaQueryHeight*0.3,
                       direction: Axis.vertical,
                       dashColor: Colors.grey,
                       dashRadius: 30,
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
                  const Text('2', style:  TextStyle(
                          color: Colors.blue, fontSize: 40, fontWeight: FontWeight.w900
                        ),),
                        const Text('Patients', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold
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
           ),
           
        ],
      ),
     ),
    );
   }
  }
  // return Dismissible(
  //         background: Container(
  //           color: Colors.green,
  //         ),
  //         key: ValueKey<int>(items[index]),
  //         onDismissed: (DismissDirection direction) {
  //           setState(() {
  //             items.removeAt(index);
  //           });
  //         },