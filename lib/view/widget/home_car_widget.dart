import 'package:challange/utils/outline_text.dart';
import 'package:challange/view/detail_screen.dart';
import 'package:flutter/material.dart';

import '../../res/image_assets.dart';
class CarWidget extends StatelessWidget {
  final int index;
  const CarWidget({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);
    return Hero(
      tag: 'TAG$index',
      child: Material(

        child: GestureDetector(
          onTap: () {
            Navigator.push(context , PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 800),
              pageBuilder: (context, animation, secondaryAnimation) {
              return DetailScreen(tag : "TAG$index");
            },));
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: double.infinity,
            height: index==0?size.height/1.5 :size.height/1.47,
            margin: index==0 ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: index==0 ? Colors.black : Colors.grey.withOpacity(.4),
              borderRadius: const BorderRadius.only(
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
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "2014",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "  -",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    OutlineText(text: "2015",size: 40,)
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Image.asset(Images.car1),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
