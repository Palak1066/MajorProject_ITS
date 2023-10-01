import 'package:flutter/material.dart';
import 'first.dart';
import 'searchh.dart';
import 'lib.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List screens=[
    HomeScreen(),
    SearchScreen(),
    LibScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music"),
      ),
      body: Container(
        color: Colors.pinkAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.library_books), label: "Liibrary"),
        ],
        onTap: (index) {
          if (index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (un) => HomeScreen()));
          }
          else if (index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (fu) => SearchScreen()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (fn) => LibScreen()));

          }
        },
      ),
    );
  }
}

