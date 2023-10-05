import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title:"hfso",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Helpful Friends Social Organization"),
          ),
          body: Myapp(),
        ),
    )
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  String text='';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration:InputDecoration(
                hintText: 'Enter your Name',
                 labelText: 'Name',
                labelStyle:TextStyle(
                  color: Colors.deepOrange[600],
                  fontSize: 15,
                ),

                hintStyle: TextStyle(
                  color: Colors.deepPurple[800],

                  fontSize: 12,
              ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ),
                prefixIcon: Icon(Icons.ac_unit),
                suffixIcon: Icon(Icons.remove_red_eye, color: Colors.redAccent,),
                  errorText:text.isEmpty?'Empty':null,
              ),
            keyboardType: TextInputType.number,
              // obscureText: true,
              obscuringCharacter: "*",
              maxLength: 11 ,
              maxLines: 2,
              onChanged: (value){
                setState(() {
                  text:(value);
                });

              },
              onSubmitted: (value){
                print(value);
              } ,
            ),
          )
        ],
      ),
    );
  }
}
