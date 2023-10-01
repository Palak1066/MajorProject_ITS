import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animaton;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(seconds: 7));
    _animaton = Tween<double>(
      begin: 0.0, end: 2*pi
    ).animate(_controller);
    _controller.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("guitar.png"),
                fit: BoxFit.cover
            )
        ),
        child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("dropp.gif"), opacity: 0.4,
                        fit: BoxFit.cover
                    ),
                    color: Colors.white.withOpacity(0.1),
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.7),
                        Colors.white.withOpacity(0.3)
                      ],
                      transform: const GradientRotation(1),
                      begin: AlignmentDirectional.topStart,
                      end: AlignmentDirectional.bottomEnd,
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white.withOpacity(0.2),
                    )
                ),
                child: SafeArea(child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.navigate_before,
                              size: 35,
                            ),
                          ),
                          Text("Listen Now", style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.more_vert,
                              size: 35,
                            ),
                          )
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(
                        child: AnimatedBuilder(
                            animation: _controller, builder: (context, child){
                              return Transform.rotate(
                                  angle: _animaton.value,
                                alignment: Alignment.center,
                                child: Container(
                                  height: 230,width: 230,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 3,
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("guitar.png"),
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,

                                      ),
                                    ),
                                  ),
                                ),
                              );
                        }),
                      ),
                      SizedBox(height: 50,),
                      const Text("Butter",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("03m0m X Diable",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      ),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),),
              ),
            )
        ),
      ),
    );
  }
}
