import 'package:flutter/material.dart';



class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder( itemCount: 10, itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(

            height: 70,

            child: Card(

              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //SizedBox(width: 20,),
                  CircleAvatar(),
                  SizedBox(width: 20,),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Text('name'),
                      Text("message text",textAlign: TextAlign.center,),


                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(width: 160,height: 30,),
                      Text('10:00', ),



                    ],
                  ),


                ],
              )

            ),
          ),
        );
      },),
    );
  }
}
