import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../../../constants.dart';

class InfoPerso extends StatelessWidget {
  const InfoPerso({
    Key? key,
    required this.title,
    required this.text,
    required this.link, //incase i know how to make this thing work in the futur!!!

  }) : super(key: key);

  final String title, text,link ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}