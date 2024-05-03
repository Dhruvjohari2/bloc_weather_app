import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1*2 * kToolbarHeight, 40, 30),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-3, -0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.2),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY:100),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('📍 Sanjay Nager India',style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.w300,
                    ),),
                    const SizedBox(height:8),
                    const Text('Good Morning',style: TextStyle(
                      color:Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                    Image.asset('assets/images/1.png'),
                    const Center(
                      child: Text('21°C',style: TextStyle(
                        color:Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    const Center(
                      child: Text('lighting',style: TextStyle(
                        color:Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                    const Center(
                      child: Text('Friday 16 - 09:41am',style: TextStyle(
                        color:Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/11.png',scale: 8),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SunRise ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(width: 3),
                                Text('5:34am ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                              ],
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/12.png',scale: 8),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('SunRise ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(width: 3),
                                Text('5:34am ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                              ],
                            )

                          ],
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    child:Divider(color: Colors.grey,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/13.png',scale: 8),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Temp Max ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(width: 3),
                                Text('5:34am ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                              ],
                            )

                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/14.png',scale: 8),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Temp Min ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                                SizedBox(width: 3),
                                Text('5:34am ',style: TextStyle(
                                  color:Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),),
                              ],
                            )

                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}