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
      appBar: AppBar(

        title: Text("To do",
        )),

         body: ListView.builder(
           itemCount: routes_2.length,
            itemBuilder: (context,index){
             return Card(
               child: ListTile(
                 shape: RoundedRectangleBorder(
                     side:BorderSide(width: 3,),
                     borderRadius:BorderRadius.circular(40)
                 ),
                 onTap: (){
                   Navigator.pushNamed(context,routes_2[index]);
                 },
                 title: Text('${routes_1[index]}'),
                 // leading:,

               ),
             );
            }) ,
      )
    ;
  }
}