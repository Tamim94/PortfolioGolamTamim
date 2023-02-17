import 'package:flutter/material.dart';
import 'package:portfolio_tamim/components/animation_counter.dart';
import 'package:portfolio_tamim/responsive.dart';

import 'package:portfolio_tamim/constants.dart';
import '../widgets/Essentials_widget.dart';

class Essentialinfo extends StatelessWidget {
  const Essentialinfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Container(
                  //Background of the block
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                      color: highColor.withOpacity(0.90),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/bg.jpg"),
                          opacity: 0.7,
                          fit: BoxFit.cover)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Essentials(
                        counter: AnimatedCounter(
                          value: 90,
                          text: "%",
                        ),
                        label: "Anglais",
                      ),
                      Essentials(
                        counter: AnimatedCounter(
                          value: 90,
                          text: "%",
                        ),
                        label: "Français",
                      ),
                    ],
                  ),
                ),
                //const SizedBox(height: defaultPadding),
              ],
            )
          : Container(
              //Background of the block
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: highColor.withOpacity(0.90),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),
                      opacity: 0.7,
                      fit: BoxFit.cover)),

              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Essentials(
                    counter: AnimatedCounter(
                      value: 90,
                      text: "%",
                    ),
                    label: "Français",
                  ),
                  Essentials(
                    counter: AnimatedCounter(
                      value: 90,
                      text: "%",
                    ),
                    label: "Anglais",
                  ),
                  Essentials(
                    counter: AnimatedCounter(
                      value: 4,
                      text: "",
                    ),
                    label: "Certifications ",
                  ),
                  Essentials(
                    counter: AnimatedCounter(
                      value: 1,
                      text: "",
                    ),
                    label: "Diplômes",
                  ),
                ],
              ),
            ),
    );
  }
}
