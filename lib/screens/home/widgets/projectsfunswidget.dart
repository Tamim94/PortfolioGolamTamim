import 'package:flutter/material.dart';
import 'package:portfolio_tamim/models/projects2.dart';
import 'package:portfolio_tamim/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_tamim/screens/home/components/projectsfun.dart';


import '../../../constants.dart';

class Projects2Card extends StatelessWidget {
  const Projects2Card({
    Key? key,
    required this.projects2,
  }) : super(key: key);

  final Projects2 projects2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            projects2.title,
            maxLines: 7, //maxline
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            projects2.description,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton( //URL methode
            onPressed: () async {
              if (await canLaunch(projects2.link ?? '')) {
                await launch(projects2.link ?? '');
              } else {
                throw 'Could not launch ${projects2.link}';
              }
            },
            child: Text(
              "Look >>",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
