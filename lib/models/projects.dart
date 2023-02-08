import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Project {
  final String title, description,link;

  Project({required this.title, required this.description,required this.link});

}

List<Project> demo_projects = [
  Project(
    title: "Projet Django Estiamflix ,",
    description:
    "Pour ce projet en solo nous devions faire une application web de type 'Netflix' avec une page d'inscription , de connexions et une BDD" ,
      link:"",
  ),
  Project(
    title: "Projet card Java Swing",
    description:
    " Pour ce projet en solo nous devions crée un jeu de carte poker ou blackjack en Java Swing avec un interface graphique",
    link:"",
  ),
  Project(
    title: "Mini projet avec Java sur replit",
    description:
    "Pendant le Module de java nous avons effectuer quelque mini projet tel que une calculatrice simple en swing , ou des classe et objets animal",
      link:"https://replit.com/@TAMIMGOLAM",
  ),
  Project(
    title: "Projet IoT Arduino",
    description:
    "Projet Arduino IOT , nous devions programmé une carte arduino a envoyé du data sur un site de feed(adafruit).",
     link: ""
  ),
  Project(
    title: "Projet hackaton 2022 Arduino",
    description:
    "Projet Arduino pendant le Hackathon 2022 ou nous devions programmé un MBOT a marqué des buts.",
    link:"",
  ),

];