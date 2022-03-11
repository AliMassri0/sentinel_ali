
import 'package:flutter/material.dart';
import 'package:sentinel/fakepatients.dart';
import 'package:sentinel/patientinfo.dart';

class Priority extends StatelessWidget {
  const Priority({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Patient Priority List'
          ,style: TextStyle(fontWeight: FontWeight.bold,
           color: Colors.white),),
          backgroundColor: const Color.fromRGBO(237, 11, 25, 1),
        ),
        body: Column(
          children: [
            Container(
              color: const Color.fromRGBO(237, 11, 25, 1),
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
                    onTap: (){
                       showSearch(context: context,
           delegate: CustomSearchDelegate(),);
                    },
                    decoration: InputDecoration(
                      //fillColor: Colors.white,
                      suffixIconColor: Colors.blue,
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Info( pat: pat[index],)));
                                                     
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
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'Ali Massri',
    'Rola Nasser',
    'Charbel Khazzaka',
    'Malak SD',
    'Naynawa Khatib',
    'Anthony Ghanem',
    'Mahdi Massri',
    'Fadi Dabaja',
    'Hiam Chahine',
  ];

  static get index => null;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: (){
        query = '';
      }, icon: const Icon(Icons.clear))
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return  IconButton (
      icon: const Icon(Icons.arrow_back),
      onPressed:(){
        close(context, null);
      }
    );
  }

  @override
  Widget buildResults(BuildContext context) {
   List<String> matchQuery = [];
   for (var patients in searchTerms) {
     if(patients.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(patients);
     }
   };
   return ListView.builder(
     itemCount: matchQuery.length,
     itemBuilder: (context, index){
       var result = matchQuery[index];
       return ListTile(
         title: Text(result),
       );
     },
     );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
   for (var patients in searchTerms) {
     if(patients.toLowerCase().contains(query.toLowerCase())){
       matchQuery.add(patients);
     }
   };
    return ListView.builder(
     itemCount: matchQuery.length,
     itemBuilder: (context, index){
       var result = matchQuery[index];
       return ListTile(
         title: Text(result),
       );
     },
     );
  }
  
}