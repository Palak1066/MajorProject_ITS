import 'package:flutter/material.dart';
import 'lib.dart';
import 'first.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchh = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        flexibleSpace: Image(
          image: AssetImage('img_3.png'),
          fit: BoxFit.cover,
        ),
      ),
      body: 
          SingleChildScrollView(
            child: Column(

              children: [
                Container(
                    child:
                            TextField(controller: searchh,
                              decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Artists, songs, podcasts"
                              ),
                            )
                ),
                SizedBox(height: 15,),
                Column(
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13)
                          ),
                          padding: EdgeInsets.all(50)
                        ), child: Text("hello")),
                        SizedBox(width: 23,),
                        ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13)
                            ),
                            padding: EdgeInsets.all(50)
                        ), child: Text("hello")),
                      ],
                    ),
                      SizedBox(height: 15,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                          SizedBox(width: 23,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              padding: EdgeInsets.all(50)
                          ), child: Text("hello")),
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],
                  ),

              ],
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
      ),
    );

  }
}
