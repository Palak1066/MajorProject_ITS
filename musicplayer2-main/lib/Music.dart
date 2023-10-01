import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  final Player=AudioPlayer();
  Widget createAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Good Morning",style: TextStyle(
        fontSize: 24
      ),),
      actions: [
        Padding(padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings),),
      ],
    );
  }
  Widget createApp(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Hindi Hits",style: TextStyle(
          fontSize: 30
      ),),

    );
  }
  Widget createAppold(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Songs For You",style: TextStyle(
          fontSize: 30
      ),),

    );
  }
  Widget createAppmood(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Mood",style: TextStyle(
          fontSize: 30
      ),),

    );
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blueGrey.shade300,
          Colors.blueGrey.shade300,
          Colors.blueGrey.shade300,
          Colors.black,
          Colors.black12,
          Colors.black,
          Colors.black,
        ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            createAppBar(),
            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,

                          decoration: BoxDecoration(
                            color: Colors.black45,
                              image: DecorationImage(
                                alignment: Alignment.topLeft,
                                  image: AssetImage("assets/images/lofi.jpg"),
                                fit: BoxFit.fill
                              ),
                          ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/HEARTTOUCHINGLOFISONGS.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                              child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],

                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/images/stay.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/Stay.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/images/namonamo.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/NamoNamo.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Container(
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              alignment: Alignment.topLeft,
                              image: AssetImage("assets/images/shapeofyou.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/EdSheeranShapeofYou.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            createApp(),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
               Column(
              children: [
              Container(alignment: Alignment.topLeft,
                width: 200,
                height: 100,

                decoration: BoxDecoration(
                  color: Colors.black45,
                  image: DecorationImage(
                      image: AssetImage("assets/images/kisi.jpeg"),
                      fit: BoxFit.fill
                  ),
                ),

              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Player.play(AssetSource('songs/KisiSePyarHoJaye.mp3'));
                  },
                    child: Icon(Icons.play_arrow),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),),
                  ElevatedButton(onPressed: (){
                    Player.pause();
                  },

                    child: Icon(Icons.pause),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Player.stop();
                  },

                    child: Icon(Icons.stop),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                  ),

                ],
              ),
              ],
            ),
                SizedBox(width: 10,),
                Column(
          children: [
            Container(alignment: Alignment.topLeft,
              width: 200,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.black45,
                image: DecorationImage(
                    image: AssetImage("assets/images/agr.jpg"),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Player.play(AssetSource('songs/AgarTumSaathHo.mp3'));
                },
                  child: Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),),
                ElevatedButton(onPressed: (){
                  Player.pause();
                },

                  child: Icon(Icons.pause),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Player.stop();
                },

                  child: Icon(Icons.stop),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),

              ],
            ),
          ],
        ),
                  SizedBox(width: 10,),
               Column(
          children: [
            Container(alignment: Alignment.topLeft,
              width: 200,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.black45,
                image: DecorationImage(
                    image: AssetImage("assets/images/bol.jpg"),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Player.play(AssetSource('songs/BolDoNaZara.mp3'));
                },
                  child: Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),),
                ElevatedButton(onPressed: (){
                  Player.pause();
                },

                  child: Icon(Icons.pause),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Player.stop();
                },

                  child: Icon(Icons.stop),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),

              ],
            ),
          ],
        ),
                  SizedBox(width: 10,),
               Column(
          children: [
            Container(alignment: Alignment.topLeft,
              width: 200,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.black45,
                image: DecorationImage(
                    image: AssetImage("assets/images/sun.jpeg"),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Player.play(AssetSource('songs/SunSaathiya.mp3'));
                },
                  child: Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),),
                ElevatedButton(onPressed: (){
                  Player.pause();
                },

                  child: Icon(Icons.pause),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Player.stop();
                },

                  child: Icon(Icons.stop),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),

              ],
            ),
          ],
        ),
                  SizedBox(width: 10,),
                Column(
          children: [
            Container(alignment: Alignment.topLeft,
              width: 200,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.black45,
                image: DecorationImage(
                    image: AssetImage("assets/images/khairiyat.jpeg"),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Row(
              children: [
                ElevatedButton(onPressed: (){
                  Player.play(AssetSource('songs/Khairiyat.mp3'));
                },
                  child: Icon(Icons.play_arrow),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),),
                ElevatedButton(onPressed: (){
                  Player.pause();
                },

                  child: Icon(Icons.pause),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),
                ElevatedButton(onPressed: (){
                  Player.stop();
                },

                  child: Icon(Icons.stop),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                  ),
                ),

              ],
            ),
          ],
        ),
                  SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            createAppold(),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/neele.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/NeeleNeeleAmbarPar.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/fitoor.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/TeraFitoor.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/khamoshiyan.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/Khamoshiyan.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/dil.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/DilMeriNaSune.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/zara.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/ZaraZara.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),

            SizedBox(height: 20,),
            createAppmood(),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/dekhle.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/TuAakeDekhle.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/chahun.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/ChahunMainYaNa.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/zindagi.jpeg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/ZindagiKuchTohBata.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/teri.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/AnkhonMeinTeri.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(alignment: Alignment.topLeft,
                        width: 200,
                        height: 100,

                        decoration: BoxDecoration(
                          color: Colors.black45,
                          image: DecorationImage(
                              image: AssetImage("assets/images/zara.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),

                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            Player.play(AssetSource('songs/ZaraZara.mp3'));
                          },
                            child: Icon(Icons.play_arrow),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),),
                          ElevatedButton(onPressed: (){
                            Player.pause();
                          },

                            child: Icon(Icons.pause),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Player.stop();
                          },

                            child: Icon(Icons.stop),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
