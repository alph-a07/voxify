import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../methods/ui_methods.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    final String assetName = Theme.of(context).brightness == Brightness.dark
        ? 'assets/images/voxify-dark.svg'
        : 'assets/images/voxify-light.svg';

    UIMethods.setStatusBarColor(context);

    return SafeArea(
        child: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.05 * height, horizontal: 0.1 * width),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Voxify',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.01,
                        horizontal: 0,
                      ),
                      child: SvgPicture.asset(assetName, width: width * 0.1),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset('assets/images/onboarding.svg'),
            ],
          ),
        ),
      ),
    ));
  }
}
