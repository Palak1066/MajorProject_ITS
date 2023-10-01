import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepg.dart';
import 'first.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true
          ),
          backgroundColor: Colors.brown[100]
      ),
      title: "Spotify Clone",
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController  _Email = TextEditingController();
  TextEditingController _Pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Musicc", style: TextStyle( fontWeight: FontWeight.bold),),
        flexibleSpace: Image(
          image: AssetImage('img_3.png'),
          fit: BoxFit.cover,
        ),
        leading: Icon(Icons.music_note),
      ),
      body:        Container(
        // decoration: BoxDecoration(
        // color: Colors.black,),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img.png"),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: Container(
            height: 300, width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img_1.png"),
                  fit: BoxFit.cover,),
//    color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("Welcome Back!", style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 20,),
                Container(
                  width: 300, color: Colors.grey[350],
                  child: TextField(controller: _Email, style: TextStyle(color: Colors.brown),
                    decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey,width: 2.0)
                        ),
                        icon: Icon(Icons.email),
                        hintText: "Email"),),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 300, color: Colors.grey[350],
                  child: TextField(controller: _Pass,
                    style:
                    TextStyle(color: Colors.brown),
                    decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 2.0)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey,width: 2.0)
                        ),
                        icon: Icon(Icons.password),
                        hintText: "Password"),),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _Email.text, password: _Pass.text).then((value) {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (fun)=> HomeScreen()));
                  }).onError((error, stackTrace) => showDialog(context: context, builder: (context)=> AlertDialog(
                    actions: [
                      Text("Login Details are Incorrect", style: TextStyle(
                          fontSize: 10,color: Colors.red,fontWeight: FontWeight.bold
                      ),),
                    ],
                  )));
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.black
                        ),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))
                    ),                         child: Text("LOGIN")
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _Email.text, password: _Pass.text);
                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.black
                        ),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ))
                    ),
                    child: Text("Registration"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
