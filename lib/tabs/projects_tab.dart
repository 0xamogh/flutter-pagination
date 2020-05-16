import 'package:jramogh/config/projects.dart';
import 'package:jramogh/widgets/project_widget.dart';
import 'package:jramogh/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class ProjectsTab extends StatelessWidget {
  final double offset;

  const ProjectsTab({Key key, this.offset}) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Container(
        // color: Colors.white,
        child: IgnorePointer(
                child: GridView.count(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.3),
              children: List.generate(
                  projects.length, (index) => ProjectWidget(projects[index], 0)),
            ),
        ),
      ),
      smallScreen: IgnorePointer(
            //   child: ListView.builder(
            // itemCount: projects.length,
            // itemBuilder: (context, index) => ProjectWidget(
            //     projects[index], (index == projects.length - 1 ? 16.0 : 0))),
      ),
    );
  }
}
