import 'package:flutter/material.dart';
import 'package:portfolio_tamim/components/animated_progress.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.60,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.80,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          label: "JavaScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.40,
          label: "SQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.30,
          label: "PHP",
        ),
      ],
    );
  }
}