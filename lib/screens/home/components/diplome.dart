

import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/diplomes.dart';
import 'package:portfolio_tamim/responsive.dart';
import 'package:portfolio_tamim/screens/home/components/projects.dart';

import '../../../constants.dart';
import '../widgets/projectwidgets.dart';
import 'package:portfolio_tamim/screens/home/widgets/diplome_widget.dart';

class MyDiplomes extends StatelessWidget {
  const MyDiplomes({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ma Scolarité :",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding),
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
    this.crossAxisCount = 4,// size of certif blocks
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_diplomes.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => Diplome ( //from diplome widget class Diplome
            diplomes: demo_diplomes[index],
          ),
    );
  }
}





