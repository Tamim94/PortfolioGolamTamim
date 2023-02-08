/*
class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
          Image.asset(
          'assets/images/img.png',
          fit: BoxFit.cover,
        ),
        Container(color: darkColor.withOpacity(0.66)),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              "Portfolio Golam Tamim\nEtudiant en 2ème année chez Estiam",
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )
                  : Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            if (Responsive.isMobileLarge(context))
    const SizedBox(height: defaultPadding / 2),
    MyBuildAnimatedText(),
    SizedBox(height: defaultPadding),
    if (!Responsive.isMobileLarge(context))
    ElevatedButton(
    onPressed: () async {
    const url ='https://www.estiam.education/bachelor-estiam/';
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }
     */