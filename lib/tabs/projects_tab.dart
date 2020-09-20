import 'package:carousel_slider/carousel_slider.dart';
import 'package:jramogh/config/projects.dart';
import 'package:jramogh/widgets/project_widget.dart';
import 'package:jramogh/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ProjectsTab extends StatelessWidget {
  final double offset;

  const ProjectsTab({Key key, this.offset}) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    
  List<String> list = ["Flutter🎯","Machine Learning🖥","Music🎼"];
    return Center(
      child :CarouselSlider(
            options: CarouselOptions(
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            enlargeCenterPage: true,
            // autoPlay: true,
            viewportFraction: 0.8,
            autoPlayCurve: Curves.easeOutCubic,
            autoPlayInterval: Duration(milliseconds: 1300)
            ),
            items:[1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
        ),
     );
    
  }
}
