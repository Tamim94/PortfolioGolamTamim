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
                Row(
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
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Essentials(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "",
                      ),
                      label: "Certifications",
                    ),
                    Essentials(
                      counter: AnimatedCounter(
                        value: 2,
                        text: "",
                      ),
                      label: "Diplomes",
                    ),
                  ],
                ),
              ],
            )
          : Container( //Background of the block
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: highColor.withOpacity(0.90),
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.jpg"),
                      opacity: 0.7,
                      fit: BoxFit.cover)),

              child: Row(
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
                      value: 3,
                      text: "",
                    ),
                    label: "Certifications ",
                  ),
                  Essentials(
                    counter: AnimatedCounter(
                      value: 2,
                      text: "",
                    ),
                    label: "Diplomes",
                  ),
                ],
              ),
            ),
    );
  }
}
