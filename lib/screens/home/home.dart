import 'package:contact_form/contact_form.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:portfolio_tamim/screens/home/components/aboutme.dart';
import 'package:portfolio_tamim/screens/home/components/footer.dart';
import 'package:portfolio_tamim/screens/home/widgets/certification_widget.dart';
import 'package:portfolio_tamim/screens/main/main_screen.dart';
import 'package:portfolio_tamim/screens/home/components/projectsfun.dart';
import 'package:portfolio_tamim/screens/home/components/diplome.dart';
import 'package:portfolio_tamim/screens/home/components/Essentials.dart';
import 'package:portfolio_tamim/screens/home/components/home_banner.dart';
import 'package:portfolio_tamim/screens/home/components/projects.dart';
import 'package:portfolio_tamim/screens/home/components/Stages.dart';
import 'package:portfolio_tamim/screens/home/components/certifications.dart';
import 'package:portfolio_tamim/screens/home/widgets/footer_widget.dart';
import 'package:contact_form/contact_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        Essentialinfo(),
        Aboutme(),
        MyDiplomes(),
        MyCertifications(),
        MyProjects(),
        MyProjects2(),
        Stages(),
        FooterInfo(),


      ],
    );
  }
}
