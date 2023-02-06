import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/projects2.dart';
import 'package:portfolio_tamim/responsive.dart';

import '../../../constants.dart';
import '../widgets/projectsfunswidget.dart';

class MyProjects2 extends StatelessWidget {
  const MyProjects2({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\nMes projets pendant BTS 2020-2022",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height:defaultPadding),
        Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,//blockbts
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects2.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => Projects2Card(
        projects2: demo_projects2[index],
      ),
    );
  }
}