import 'package:footer/footer.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_tamim/components/animation_counter.dart';
import 'package:portfolio_tamim/responsive.dart';

import 'package:portfolio_tamim/constants.dart';
import '../widgets/footer_widget.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Image.asset(
                  'assets/images/bgg.jpg',
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Footers(
                      label: "",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Footers(
                      label: "Portfolio Tamim ©",
                    ),
                  ],
                ),
              ],
            )
          : Container(
              //Background of the block
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: highColor.withOpacity(0.90),
                  image: DecorationImage(
                      image: AssetImage("assets/images/bgg.jpg"),
                      opacity: 0.7,
                      fit: BoxFit.cover)),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Footers(
                    // value: 90

                    label: "Portfolio Tamim ©",
                  ),
                ],
              ),
            ),
    );
  }
}
