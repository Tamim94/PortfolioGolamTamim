import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/projects.dart';
import 'package:portfolio_tamim/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_tamim/models/diplomes.dart';
import 'package:portfolio_tamim/screens/home/components/diplome.dart';
import 'package:portfolio_tamim/screens/home/components/diplome.dart';

import '../../../constants.dart';

class Diplome extends StatelessWidget {
  //ITEMBUILDER in the diplome
  const Diplome({
    Key? key,
    required this.diplomes,
  }) : super(key: key);

  final Diplomes diplomes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          diplomes.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Spacer(), // if i want descriptions
         Text(
            diplomes.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        Spacer(),//When i'm gonna add degrees screen shot
        /* TextButton(
            onPressed: () async {
              if (await canLaunch (diplomes.link ?? '')
              ) {
                await launch(diplomes.link ?? '');
              } else {
                throw 'Could not launch ${diplomes.link}';
              }
            },
            child: Text(
              "Diplome >>",
              style: TextStyle(color: primaryColor)*/
      ]),
    );
  }
}
