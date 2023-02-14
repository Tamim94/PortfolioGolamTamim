import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String title, description,link;

  Project({required this.title, required this.description,required this.link});

}

List<Project> demo_projects = [
  Project(
    title: "Mon Projet Personel",
    description:
    "La page que vous regardez actuellement est mon portfolio que j'ai développé à l'aide d'un tuto pour apprendre Flutter et le language Dart il est hebergé sur Firebase mais n'utilise pas de base de données que j'essaie actuellement d'implementer je suis toujours en train de le modifier cependant vraiment motivé a en apprendre plus du framework!." ,
    link:"https://github.com/Tamim94/PortfolioGolamTamim/tree/master",
  ),
  Project(
    title: "Projet Django Estiamflix",
    description:
    "Pour ce projet en solo nous devions faire une application web de type 'Netflix' avec une page d'inscription , de connexions et une BDD" ,
      link:"https://github.com/Tamim94/Tamimestiamflix1",
  ),
  Project(
    title: "Projet card Java Swing",
    description:
    " Pour ce projet en groupe (solo dans mon cas) nous devions crée un jeu de carte poker ou blackjack en Java Swing avec un interface graphique",
    link:"https://github.com/Tamim94/TAMIMBLACKJACKCARD",
  ),
  Project(
    title: "Mini projets avec Java sur replit",
    description:
   """"Pendant le Module de java nous avons effectuer quelque mini projet tel que une calculatrice simple en swing , ou des classe et objets animal cliquez "Repls" dans ma page Replic dans le lien ci dessous:""",
      link:"https://replit.com/@TAMIMGOLAM",
  ),
  Project(
    title: "Projet IoT Arduino",
    description:
    "Projet Arduino IOT , nous devions programmé une carte arduino a envoyé du data sur un site de feed(adafruit).",
     link: "https://github.com/Tamim94/Tamim_Projet_IOT_Arduino/tree/main/ProjetARDUINO"
  ),
  Project(
    title: "Projet hackaton 2022 Arduino",
    description:
    "Projet Arduino pendant le Hackathon 2022 ou nous devions programmé un MBOT a marqué des buts.",
    link:"",
  ),

];