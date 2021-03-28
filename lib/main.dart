import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_appn/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('櫨山駿佑'), actions: [
        Icon(Icons.add),
        Icon(Icons.share),
      ]),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Map'),
              trailing: Icon(Icons.map),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage('aaa'),
                    ),
                );

              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
            ),
          ],
        ),


        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: <Widget>[
        //       Container(
        //         color: Colors.purple,
        //         alignment: Alignment.center,
        //         height: 100,
        //         child: Text(
        //           '櫨山',
        //           style: TextStyle(
        //             fontSize: 50,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.amber,
        //             backgroundColor: Colors.red,
        //           ),
        //         ),
        //       ),
        //
        //       // const Image(
        //       //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        //       // ),
        //       Image.asset('images/sample.png'),
        //       Icon(
        //         Icons.restaurant,
        //         size: 100,
        //       ),
        //
        //       Container(
        //         child: Column(
        //           children: [
        //             TextFormField(
        //               //autofocus: true,
        //               decoration: InputDecoration(
        //                 hintText: 'ここに入力してください'
        //               ),
        //             ),
        //             TextField(
        //               decoration: InputDecoration(
        //                 hintText: 'hahaha'
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //
        //       Container(child: ElevatedButton(
        //         child: Text('Push'),
        //         onPressed: () async {
        //           //ここに押したら反応するコードをかく
        //           final result = await Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => NextPage('a'),
        //             ),
        //           );
        //           print(result);
        //         },
        //       )),
        //       Container(
        //         color: Colors.lightBlue,
        //         alignment: Alignment.center,
        //         height: 100,
        //         child: Text(
        //           '駿佑',
        //           style: TextStyle(
        //             fontSize: 50,
        //             fontWeight: FontWeight.bold,
        //             color: Colors.red,
        //             backgroundColor: Colors.amber,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
      ),
      //
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
