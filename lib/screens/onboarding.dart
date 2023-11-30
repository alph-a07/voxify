import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:voxify/providers/theme_state_manager.dart';
import '../methods/ui_methods.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  final String heading = 'Welcome to Voxify!';
  final String subheading =
      'Unite, Connect, and Explore: Join the Revolution of Community Conversations with Voxify!';

  @override
  Widget build(BuildContext context) {
    UIMethods.setStatusBarColor(context);

    return SafeArea(
      child: Consumer<ThemeStateManager>(
        builder: (context, themeStateManager, _) {
          var width = themeStateManager.width;
          var height = themeStateManager.height;

          final String assetName = Theme.of(context).brightness == Brightness.dark
              ? 'assets/images/voxify-dark.svg'
              : 'assets/images/voxify-light.svg';

          return Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.04 * height, horizontal: 0.08 * width),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: height * 0.01,
                            horizontal: 0,
                          ),
                          child: SvgPicture.asset(assetName, width: width * 0.1),
                        ),
                        SizedBox(
                          width: 0.02 * width,
                        ),
                        Text(
                          'Voxify',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/onboarding.svg',
                    height: 0.35 * height,
                  ),
                  Column(
                    children: [
                      Text(
                        heading,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        subheading,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      UIMethods.getFilledButton(() => null, 'Register'),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      UIMethods.getFilledButton(() => null, 'Sign In'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
