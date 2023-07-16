import 'package:flutter/material.dart';
import 'CheckboxExample.dart';
class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  final _text=TextEditingController();
  String? passed;
  List<String?> passesList=[''];
  List<bool?> value_=[false];
  Widget build(BuildContext context) {
    print(passed);
    print(passesList);
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [ListView(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            children:[SizedBox(height: 2),ListTile(
            shape: RoundedRectangleBorder(
                       side:BorderSide(width: 3 ,),
                       borderRadius:BorderRadius.circular(40)
            ),

            tileColor: Colors.blue[400],

                    onTap: (){
              setState(() {
                if(_text.text !='')  {
                  passed = _text.text;
                  passesList.add(passed);
                  value_.add(false);
                }
              });
              },
              title: Text("Add a Task")),
            Container(
              child: TextField(
                controller: _text,
              ),
            ),
            SizedBox(
    height: 20,
  )]),
         ListView.builder(
             physics: NeverScrollableScrollPhysics(),
             scrollDirection: Axis.vertical,
             shrinkWrap: true,
        itemCount:passesList.length-1,
        itemBuilder: (context,index){

         return Row(
           children: [
             Expanded(child:Checkbox(
value: value_[index+1],
               onChanged: (bool? value){
  print(value_);
  setState(() {
    value_[index+1]=value;
  });



               },
             )),Expanded(
               flex:1,
               child: Text("${passesList[index+1]}")),
             Expanded(
             flex:1,
             child: IconButton(
               icon: Icon(
                 Icons.delete_forever
               ),
               onPressed: (){
                 setState(() {
                   value_.removeAt(index);
                   passesList.remove(passesList[index+1]);
                 });
                     },
             ),
           )],
         );
        }
  ),

          ],
            ),
      ),
      );
  }
}
