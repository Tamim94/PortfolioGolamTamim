import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Technologies touché",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        KnowledgeText(text: "Linux Ubuntu, Debian"),
        KnowledgeText(text: "VsCodes,AndroidStudio,Netbeans"),
        KnowledgeText(text: "Wix,WordPress"),
        KnowledgeText(text: "Ubuntu server, Windows Server 2019"),
        KnowledgeText(text: "Github"),
        KnowledgeText(text: "React,Code igniter"),


      Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding),
        child: Text(
          "Diplomes",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      KnowledgeText(text: "Bac ES 2020"),
      KnowledgeText(text: "Brevet de college 2016"),
      ],
    );
  }

}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}