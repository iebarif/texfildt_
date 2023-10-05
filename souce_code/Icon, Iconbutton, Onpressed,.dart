import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(

    title:("HFSO"),
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("HFSO")),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int volume=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 299,
        height: 200,
        color: Colors.grey,
        padding: EdgeInsets.only(top:40),
        child: Column(
          children: [
            Icon(
              Icons.volume_up,
              size:  60,
              color: Colors.red,
            ),

            IconButton(
                icon:Icon(
                    color:Colors.cyan,
                    Icons.volume_up,size: 60),
                onPressed:(){
                  print("hi");
                  setState(() {
                    volume+=1;
                  });
                }
            ),
            Padding(
              padding: const EdgeInsets.only(top:35.0),
              child: Text("$volume  "),
            ),
          ],
        ),
      ),
    );
  }
}
