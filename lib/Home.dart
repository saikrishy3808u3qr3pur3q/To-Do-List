import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> routes_1=['My day','Important','Planned',
  'Flagged email','Tasks'];
  List<String> routes_2=['/myday','/important','/planned',
    '/flagged','/tasks'];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.green[700],

        title: Text("To do",
        )),

         body: ListView.builder(
           itemCount: routes_2.length,
            itemBuilder: (context,index){
               return ListTile(
                 shape: RoundedRectangleBorder(

                     side:BorderSide(width: 1,
                     color: Colors.white),
                     borderRadius:BorderRadius.circular(10)
                 ),
                 onTap: (){
                   Navigator.pushNamed(context,routes_2[index]);
                 },
                 title: Text('${routes_1[index]}'),
                 // leading:,


             );
            }) ,
      )
    ;
  }
}