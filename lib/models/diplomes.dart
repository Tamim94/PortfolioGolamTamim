import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Diplomes {
  final String title, description, link;

  Diplomes(
      {required this.title, required this.description, required this.link});
}

List<Diplomes> demo_diplomes = [
  Diplomes(
    title: "Bachelors App & Design chez Estiam",
    description: "En cours actuellement en 2eme années ",
    link: "",
  ),
  Diplomes(
    title: "BTS SIO SLAM 2020-2022 Lycée René Descartes",
    description: "J'ai effectué 2 ans de BTS SIO option SLAM ",
    link: "",
  ),
  Diplomes(
    title: "Bac ES 2020 Lycée Pablo Picasso",
    description: "J'ai fais un bac ES car j'hésitait entre avoir un carrière vers le Web Marketing et le Développement Web,Mobile",
    link:
        "",
  ),
  Diplomes(title: "Brevet de college 2016 ", description: "ZzzzzzzzzzzzzzzzZ", link: ""),
];
