import 'package:flutter/material.dart';
import 'CheckboxExample.dart';
class Cards extends StatefulWidget {
  String priority;
  Cards(this.priority);

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
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue  ;
    }
    print(passed);
    print(passesList);
    return Scaffold(
      backgroundColor: Colors.green[200],
      body:SingleChildScrollView(
        child: Column(
          children: [ListView(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            children:[SizedBox(height: 2),ListTile(
            shape: RoundedRectangleBorder(
                       side:BorderSide(width: 3 ,color:Colors.white),
                       borderRadius:BorderRadius.circular(10)
            ),

            tileColor: Colors.green[200],

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
              padding: EdgeInsets.fromLTRB(5,0,5,0),
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
               fillColor: MaterialStateProperty.resolveWith(getColor),
               onChanged: (bool? value){
  print(value_);
  setState(() {

    value_[index+1]=value;
    Finshed(passesList[index+1]);
    passesList.remove(index+1);
  }
  );
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
                   value_.removeAt(index+1);
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
