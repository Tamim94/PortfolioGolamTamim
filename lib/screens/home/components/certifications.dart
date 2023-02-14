
import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/certifications.dart';
import 'package:portfolio_tamim/responsive.dart';

import '../../../constants.dart';
import '../widgets/certification_widget.dart';

class MyCertifications extends StatelessWidget {
  const MyCertifications({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "\nMes Certifications :",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: defaultPadding),
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 2,//DIVISE EN BLOCS
            childAspectRatio: 1,//HAUTEUR MOBILE
          ),
          mobileLarge: ProjectsGridView(crossAxisCount: 2),//2
          tablet: ProjectsGridView(childAspectRatio: 1.1),//1.1
          desktop: ProjectsGridView(),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 5,// size of certif blocks 5
    this.childAspectRatio = 1.3,//1.3
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_certifications.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) =>Certification(
            certifications: demo_certifications[index],
          ),
    );
  }
}

