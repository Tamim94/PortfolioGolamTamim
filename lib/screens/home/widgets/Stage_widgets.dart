import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/Stages.dart';

import '../../../constants.dart';

class Stage extends StatelessWidget {
  const Stage({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Stages recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme
                .of(context)
                .textTheme
                .titleSmall,
          ),
          Text(recommendation.source!),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}