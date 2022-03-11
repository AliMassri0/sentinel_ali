import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:sentinel/fakenoti.dart';
import 'package:sentinel/fakepatients.dart';
import 'package:sentinel/notification1.dart';
import 'package:sentinel/patients.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  
  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<Patients> patt = pat;
  List<Notification1> items= not;
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: mediaQueryWidth*0.03),
              child: const Icon(Icons.notifications,
              color: Colors.white,),
            ),],
          toolbarHeight: mediaQueryHeight*0.2,
          elevation: 0,
          title: const Text('Notifications'
          ,style: TextStyle(fontWeight: FontWeight.bold,
           color: Colors.white),),
          backgroundColor: Colors.lightBlue,
        ),
        body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: items.length,
        itemBuilder: ((context, index) => Slidable(
                  key: const ValueKey(0),
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          Fluttertoast.showToast(
                              msg: "Snoozed", // message
                              toastLength: Toast.LENGTH_SHORT, // length
                              gravity: ToastGravity.BOTTOM, // location
                              timeInSecForIosWeb: 3 // duration
                              );
                          setState(() {
                            items[index].seen=true;
                            items[index].snoozed=true;
                          });
        
                        },
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.white,
                        icon: Icons.snooze,
                      ),
                      SlidableAction(
                        onPressed: (context) => dismissItem(
                          context,
                          index,
                        ),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.cancel,
                      ),
                      SlidableAction(
                        onPressed: (c) {
                          showDialog(
                              context: c,
                              builder: (_) => AlertDialog(
                                    title: const Text(
                                      'Note',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    content: Row(
                                      children: const [
                                        Expanded(
                                          child:  TextField(
                                            autofocus: true,
                                            keyboardType:
                                                TextInputType.multiline,
                                            maxLines: 3,
                                          ),
                                        ),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(
                                              fontSize: 15,
                                              ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  ));
                          setState(() {
                            items[index].snoozed=false;
                            items[index].seen=true;
                          });
        
                        },
                        // onPressed: openDialog(),
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        icon: Icons.check_circle,
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: mediaQueryWidth,
                    height: mediaQueryHeight * 0.15,
                    child: ListTile(
                      title: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: mediaQueryWidth * 0.01),
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromRGBO(244, 244, 244, 1),
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                    items[index].image,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index].pName,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                       ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        items[index].status,
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            ),
                                      ),
                                      Text(
                                        '${items[index].statusnb}%',
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  !items[index].seen? const Icon(
                                     Icons.circle,
                                    color: Color.fromRGBO(27, 163, 252, 1),
                                    size: 15,
                                  ): items[index].snoozed? const Icon(
                                    Icons.snooze,
                                    color: Colors.amber,
                                    size: 15,
                                  ): const Icon(
                                    Icons.article_rounded,
                                    color: Colors.green,
                                    size: 15,
                                  ),
                                  Text(
                                    DateFormat.yMd()
                                                .format(items[index].time) ==
                                            DateFormat.yMd()
                                                .format(DateTime.now())
                                        ? 'Today, ${DateFormat.Hm().format(items[index].time)}'
                                        : '${DateFormat.E().format(items[index].time)} ${DateFormat.d().format(items[index].time)} ${DateFormat.MMM().format(items[index].time)}, ${DateFormat('hh:mm a').format(items[index].time)}',
                                    style: const TextStyle(
                                        color:
                                            Color.fromRGBO(147, 147, 147, 1),
                                        fontSize: 13,
                                        fontFamily: 'Roboto-Regular'),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      onTap: () {},
                    ),
                  )))
        ))); 
  }

  dismissItem(BuildContext context, int index) {}}
  