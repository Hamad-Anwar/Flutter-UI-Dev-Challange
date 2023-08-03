import 'dart:async';

import 'package:challange/res/static_wiget_list.dart';
import 'package:challange/utils/outline_text.dart';
import 'package:challange/view/home_page.dart';
import 'package:flutter/material.dart';

import '../res/image_assets.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.index});
  final int index;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  bool anim = false;
  int temp = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 1000), () {
      setState(() {
        anim = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          anim = false;
        });
        Timer(
          const Duration(milliseconds: 800),
          () {
            Navigator.pop(context);
          },
        );
        return false;
      },
      child: Hero(
        tag: tags[widget.index],
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1000),
                  top: anim ? -size.height : size.height,
                  child: Container(
                    height: size.height * 2,
                    width: size.width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.white.withOpacity(.01),
                          Colors.white.withOpacity(.01),
                          Colors.white.withOpacity(1),
                          Colors.white.withOpacity(1),
                          Colors.white.withOpacity(1),
                          Colors.white.withOpacity(1),
                        ])),
                  )),
              Positioned.fill(
                  child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 3,
                        width: 30,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        customText("2014", 60, FontWeight.bold),
                        customText(" -", 40, FontWeight.bold),
                        OutlineText(text: "2015"),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      width: size.width,
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                              left: anim ? size.width / 5 : 10,
                              right:anim ? -200:20,
                              height: anim ? 170 : 150,
                              bottom: 0,
                              duration: const Duration(milliseconds: 800),

                              child: Image.asset(images[widget.index]))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Text(
                        "1    2    3    4",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Image.asset(
                          Images.logo,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Chevrolet",
                        style: TextStyle(
                            height: 0,
                            color: Colors.grey,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Corvette",
                        style: TextStyle(
                            height: 0,
                            color: Colors.grey,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                              curve: Curves.easeInOut,
                              top: anim ? 1 : 300,
                              duration: const Duration(milliseconds: 1000),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: size.width,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Production",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              "2012 - 2014",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Class",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Text(
                                              "Sport Car",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25,
                                                  fontWeight:
                                                      FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 45),
                                    height: 2,
                                    color: Colors.grey,
                                    width: MediaQuery.sizeOf(context).width /
                                        1.1,
                                  ),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 45),
                                    child: Text(
                                      'The third generation corvet',
                                      style: TextStyle(
                                        letterSpacing: 2,
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget customText(String text, double size, FontWeight fontWeight) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 1000),
        child: anim
            ? Text(
                text,
                key: UniqueKey(),
                style: TextStyle(
                    height: 0,
                    color: Colors.black,
                    fontSize: size,
                    fontWeight: fontWeight),
              )
            : Text(
                text,
                key: UniqueKey(),
                style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: size,
                    fontWeight: fontWeight),
              ));
  }
}
