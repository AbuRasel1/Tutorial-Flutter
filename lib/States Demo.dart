import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatesDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class StatesDemo extends StatefulWidget {
  const StatesDemo({super.key});

  @override
  State<StatesDemo> createState() => _StatesDemoState();
}

class _StatesDemoState extends State<StatesDemo> {
  String myText="Hello rasel";
//elevated button a click korle _changeText call hobe
  void _changeText(){
    setState(() {
      if(myText.startsWith("H")){
        myText="Welcome";
      }else{
        myText="Hello rasel";
      }
    });


  }

  //ay widget ta body te call kora hoice
  Widget _bodyWidget(){
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          children: [
            Text(myText),
            ElevatedButton(onPressed: (){
              //_changeText widget call hobe
              _changeText();
            }, child: Text("Click"))
          ],

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("States Demo"),

      ),
      body:_bodyWidget() ,
    );
  }
}

