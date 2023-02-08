class Projects2 {
  final String title, description, link; // Bloc de projet constructor

  Projects2(
      {required this.title, required this.description, required this.link});
}

List<Projects2> demo_projects2 = [
  Projects2(
    title: "Portfolio en Wix(Ancien portfolio) ",
    description:
        "Pendant mon 1ere année de BTS nous devions faire un portfolio en Wix pour nous valorisé dans la recherche d'un stage. J'ai utilisé ce portfolio jusqu'a la fin de mon 2eme année de bts ",
    link: "https://golamtamim94.wixsite.com/portfolio",
  ),
  Projects2(
    title: "Projet CVEN",
    description:
        "Pour ce projet en équipe nous avons fais une application web de réservation dans le site du jura :",
    link: "https://github.com/Tamim94/CVEN",
  ),
  Projects2(
    title: "Playlistcollaborative ",
    description:
        "Nous devions faire une app web avec bdd mais au final avions juste fait des pages html static",
    link: "https://github.com/Tamim94/PLAYLISTCOLLABORATIVE",
  ),
];
