
import 'package:flutter/material.dart';
import 'package:portfolio_tamim/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_tamim/models/certifications.dart';

import '../../../constants.dart';

class Certification extends StatelessWidget { //ITEMBUILDER in the certif
  const Certification ({
    Key? key,
    required this.certifications,
  }) : super(key: key);

  final Certifications certifications;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            certifications.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Spacer(),
         /* Text(
            certifications.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),*/
          const Spacer(),
          TextButton(
            onPressed: () async {
              if (await canLaunch (certifications.link)
              ) {
                await launch(certifications.link);
              } else {
                throw 'Could not launch ${certifications.link}';
              }
            },
            child: const Text(
              "Certification >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
