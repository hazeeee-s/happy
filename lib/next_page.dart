

import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  NextPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text('櫨山駿佑'),

          actions:[
            Icon(Icons.add),
            Icon(Icons.share),
          ]
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(

              color: Colors.purple,
              alignment: Alignment.center,
              height: 100,

              child: Text(name,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color:Colors.amber,
                  backgroundColor: Colors.red,
                ),
              ),


            ),
            Container(
              child: ElevatedButton(
                child: Text('戻る'),
                onPressed: (){
                  Navigator.pop(context,'Happy!');
                },
              ),
            )
          ],
        ),
      ),
    );


  }
  
  
}