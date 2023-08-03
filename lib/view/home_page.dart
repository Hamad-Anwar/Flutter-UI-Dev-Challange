import 'package:challange/res/static_wiget_list.dart';
import 'package:flutter/material.dart';

import 'package:swipe_cards/swipe_cards.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

import '../utils/outline_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = SwipeableCardSectionController();
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 17,
        ),
        title: const Text(
          "Timeline",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OutlineText(text: "2012"),
                  OutlineText(text: "2013"),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("2014",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),),

                  ),
                  OutlineText(text: "2015"),
                  OutlineText(text: "2016"),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: SwipeCards(
                matchEngine: MatchEngine(swipeItems: [
                  SwipeItem(),
                  SwipeItem(),
                ]),
                onStackFinished: () {},
                itemBuilder: (context, index) {
                  return Align(
                      alignment: Alignment.bottomCenter,
                      child: cardWidgets[index]);
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
