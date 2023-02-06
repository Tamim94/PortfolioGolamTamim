import 'package:flutter/material.dart';
import 'package:portfolio_tamim/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter/gestures.dart';

import 'Info_perso.dart';
import 'languages.dart';
import 'softskills.dart';
import 'personalinfo.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    InfoPerso(
                      title: "Pays",
                      text: "France",
                      link:"",
                    ),

                    InfoPerso(
                      title: "City",
                      text: "Rosny-sous-Bois 93110",
                      link:"",
                    ),
                    InfoPerso(
                      title: "Age",
                      text: "21",
                      link:"",
                    ),
                    InfoPerso(
                      title: "School",
                      text: "Estiam",
                      link:"",
                    ), //Ecole
                    InfoPerso(
                      title: "Mail",
                      text: "golam.tamim94@gmail.com",
                      link:"",
                    ),
                    InfoPerso(
                      title: "Telephone",
                      text: "06 99 34 13 08",
                      link:"",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        const url = 'https://bb8d0c39-4de1-4690-9c13-013194a8580b.filesusr.com/ugd/0bdab9_38d704171592422d952768b84f5dafe8.pdf';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/cv.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: highColor.withOpacity(0.99),
                          image: DecorationImage(
                              image: AssetImage("assets/images/bgg.jpg"),
                              opacity: 0.9,
                              fit: BoxFit.cover)),
                      margin: EdgeInsets.only(top: defaultPadding),
                     // color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () async {
                              const url = 'https://www.linkedin.com/in/tamim-golam-16ab1322a/';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/check.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              const url = 'https://www.example.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/udemy.svg"),
                          ),
                          IconButton(
                            onPressed: () async {
                              const url = 'https://github.com/Tamim94';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}