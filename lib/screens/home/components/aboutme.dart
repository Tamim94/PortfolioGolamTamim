import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/aboutme.dart';
import 'package:portfolio_tamim/screens/home/widgets/aboutme_widget.dart';

import '../../../constants.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //alignement
        children: [
          Text(
            "About me",
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
                demo_about.length,
                    (index) =>
                    Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: Abouts(
                        about: demo_about[index],
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