import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: BoxDecoration(
            color: highColor.withOpacity(0.90),
            image: DecorationImage(
                image: AssetImage("assets/images/peakpx.jpg"),
                opacity: 0.7,
                fit: BoxFit.cover)),
       // color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/Tamim.jpg"),
            ),
            Spacer(),
            Text(
              "Golam Tamim",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Etudiant en Informatique chez Estiam en 2eme année \n Actuellement en recherche de stage de 2 mois et d'une alternance",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                color: Colors.white,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}