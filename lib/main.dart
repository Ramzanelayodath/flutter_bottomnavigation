import 'package:flutter/material.dart';
import './Home.dart';
import './Language.dart';
import './Work.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyappState();
  }
  // This widget is the root of your application.

}

class MyappState extends State<MyApp>
{
  int selectedPage = 0;
   final pageOptions = [
     Home(),
     Language(),
     Work()

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bottom Navigation',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Bottom Navigation"),
            backgroundColor: Colors.red
          ),
          body: pageOptions[selectedPage] ,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedPage,
            fixedColor: Colors.red,
            onTap: (int index){
              setState(() {
                selectedPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.work),
                  title: Text('Work')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.language),
                  title: Text('Language ')),
            ],
          ),
        ),

    );
  }
}


