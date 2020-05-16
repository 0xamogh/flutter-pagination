import 'package:carousel_slider/carousel_slider.dart';
import 'package:jramogh/config/assets.dart';
import 'package:jramogh/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  final double offset;

  const AboutTab({Key key, this.offset}) : super(key: key);             //<-- How far is page from being displayed

  @override
  Widget build(BuildContext context) {
    List<String> list = ["Flutter🎯","Machine Learning🖥","Music🎼"];
    return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: CircleAvatar(
              //     radius: 100,
              //     backgroundImage: Image.asset(Assets.avatar).image,
              //   ),
              // ),
              
              SizedBox(
                height: 20,
              ),
              Text(
                'Hello! I am Amogh.',
                textScaleFactor: 5.5,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              IgnorePointer(
                  child: Container(
                  height: 45,
                  width : double.infinity,
                  child: CarouselSlider(
            options: CarouselOptions(
            // aspectRatio: 2.0,
            enableInfiniteScroll: true,
            enlargeCenterPage: true,
            scrollDirection: Axis.vertical,
            autoPlay: true,
            // scrollPhysics: ScrollPhysics. ,
            viewportFraction: 1,
            autoPlayCurve: Curves.easeOutCubic,
            autoPlayInterval: Duration(milliseconds: 1300)
            ),
            items: list.map((item) => Container(
                  // height: 40,
                  child: Center(
                    child :Text(
                  item,
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 3,
                  textAlign: TextAlign.center,
                ),
                    ), 
          )).toList(),
        ),
                ),
              ),
              // Text(
              //   'Flutter. Machine Learning. Music.',
              //   style: Theme.of(context).textTheme.caption,
              //   textScaleFactor: 2,
              //   textAlign: TextAlign.center,
              // ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: SizedBox(
                        width: 90,
                        height: 90,
                        child: Image.asset(Assets.kaggle)), 
                    onPressed: () => html.window
                        .open(Constants.PROFILE_KAGGLE, 'adityadroid'),
                      ),
                  IconButton(
                    icon: SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(Assets.linkedin)), 
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'adityadroid'),
                      ),
                  IconButton(
                    icon: SizedBox(
                        width: 120,
                        height: 120,
                        child: Image.asset(Assets.github)), 
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'amogh-jrules'),
                      ),
                ],
              )
            ],
          ),
        ),
    );
  }
}
