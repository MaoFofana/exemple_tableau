import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 4),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("République du bénin"),
                    Text("Ministère/Institution/Collectivité local"),
                    Text("Direction/Service")
                  ],
                ),
                Column(
                  children: const [
                    Text("Ordre de sortie N°....", style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.end,)
                  ],
                )
              ],
            ),
            const Text("ORDRE D'ENTREE", textAlign:  TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),),
            const Text("(à etablir en 3 exemplaire)", textAlign:  TextAlign.center,),
            Row(
              children:  [
                Column(
                  children:  const [
                    Text("1-") ,
                    Text("2-"),
                    Text("3-"),
                    Text("4-"),
                    Text("5-")
                  ],
                ),
                Column(
                  children:  [
                    Row(
                      children: const [
                        Text("BUDGET") ,
                        Text("Chapitre")
                      ],
                    ),
                    const Text("(2)"),
                    const Text("(3)"),
                    const Text("(4)"),
                  ],
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 1000,
                  child: Table(
                    border : TableBorder.all(),
                    children: [

                      TableRow(
                          children: [
                            TableCell(
                              child: Container(
                                width: 50.0,
                                height: 100.0,
                                child: Column(children: [
                                  Container(
                                    height: 50.0,
                                    child:Center(child: Text("1")),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all()
                                    ),
                                    height: 50.0,
                                    child:Center(child: Text("1")),
                                  )
                                ],),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                width: 50.0,
                                height: 100.0,
                                child: Column(children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                    child:Center(child: Text("1")),
                                  ),
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                    child:Center(child: Text("1")),
                                  )
                                ],),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                width: 50.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black87)
                                ),
                                child:Center(child: Text("1")),
                              ),
                            )
                          ]),
                      TableRow(
                          children: [
                            TableCell(
                              child: Container(
                                width: 50.0,
                                height: 100.0,
                                child: Column(children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                  )
                                ],),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87)
                              ),
                              width: 50.0,
                              height: 50.0,
                              child: Text("5"),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87)
                              ),
                              width: 50.0,
                              height: 50.0,
                              child: Text("6"),
                            ),
                          ]),
                      TableRow(
                          children: [
                            TableCell(
                              child: Container(
                                width: 50.0,
                                height: 100.0,
                                child: Column(children: [
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                  ),
                                  Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black87)
                                    ),
                                  )
                                ],),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87)
                              ),
                              width: 50.0,
                              height: 50.0,
                              child:  Text("7")
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black87)
                              ),
                              width: 50.0,
                              height: 50.0,
                              child: Text("8"),
                            ),
                          ]),
                    ],
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
