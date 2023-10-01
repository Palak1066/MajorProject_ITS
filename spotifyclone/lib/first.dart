import 'package:flutter/material.dart';
import 'searchh.dart';
import 'lib.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List screens=[
    HomeScreen(),
    SearchScreen(),
    LibScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        flexibleSpace: Image(
          image: AssetImage('img_3.png'),
          fit: BoxFit.cover,
        ),
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.history)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        ],
      ),
      body:
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img_1.png"),
              fit: BoxFit.cover,
            )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("BASED ON YOUR RECENT LISTENING", style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(height: 30,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),

                      SizedBox(width: 50,),

                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      )
                    ],
                  )
              ),
              SizedBox(height: 30,),
              Text("YOUR TOP MIXES", style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),

                      SizedBox(width: 50,),

                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 30,),
              Text("DATA THIRD",style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
              ) ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    children: [
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),

                      SizedBox(width: 50,),

                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png", height: 200, width: 200,),
                          Text("song name")
                        ],
                      ),
                      SizedBox(width: 50,),
                      Column(
                        children: [
                          Image.asset("img.png",  height: 200, width: 200,),
                          Text("song name")
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
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
        fixedColor: Colors.brown,
      ),
    );

  }
}

