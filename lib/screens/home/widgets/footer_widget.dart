import 'package:flutter/material.dart';

import 'package:portfolio_tamim/constants.dart';

class Footers extends StatelessWidget {
  const Footers({
    Key? key,

    this.label,
  }) : super(key: key);

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: defaultPadding / 2),
        Text(label!, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}