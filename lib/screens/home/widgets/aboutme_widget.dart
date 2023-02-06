import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/aboutme.dart';

import '../../../constants.dart';

class Abouts extends StatelessWidget {
  const Abouts({
    Key? key,
    required this.about,
  }) : super(key: key);

  final About about;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,//400
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        /*  Text(
            about.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(about.source!),
          const SizedBox(height: defaultPadding),*/
          Text(
            about.text!,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5,color: Colors.white),//1.5
          )
        ],
      ),
    );
  }
}
