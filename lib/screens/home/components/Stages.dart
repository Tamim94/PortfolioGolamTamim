import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/Stages.dart';
import 'package:portfolio_tamim/screens/home/widgets/Stage_widgets.dart';

import '../../../constants.dart';

class Stages extends StatelessWidget {
  const Stages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Stages",
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_stages.length,
                    (index) =>
                    Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: Stage (
                        recommendation: demo_stages[index],
                      ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}