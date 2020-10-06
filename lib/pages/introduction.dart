import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:jramogh/widgets/flutter_parallax.dart';

class Introduction extends StatelessWidget {
  final offset;

  const Introduction({Key key, this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    // print(width);
    bool _visible = true;
    final controller = FadeInController(autoStart: true);
    final controller2 = FadeInController(autoStart: true);
    // controller.fadeIn();
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Stack(
        children: <Widget>[
          FlutterParallaxChild(
            child: Text(
              "About Me",
              style: TextStyle(fontSize: 60),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                width: 1200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width / 3,
                      child: FadeIn(
                        // opacity: _visible ? 1.0 : 0.0,
                        controller: controller,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.decelerate,

                        child: Text(
                          "been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                              fontSize: width < 1100 ? 15 : width / 60),
                        ),
                      ),
                    ),
                    FadeIn(
                      duration: Duration(milliseconds: 500),
                      // controller: controller,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ClipOval(
                          child: Container(
                              width: width < 1100 ? 175 : width / 6,
                              child: Image.asset("profile.png")),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          // Align(
          //     alignment: Alignment(3-3*offset.abs()-.75,2.25-1.5*offset.abs()),
          //         child: Expanded(
          //           child: Text(
          //               "About Me",
          //               style:  TextStyle(
          //                       fontSize: 60
          //               ),),
          //         ),
          //   ),
        ],
      ),
    );
  }
}
