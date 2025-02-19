import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/responsive_aspect_card.dart';
import 'package:rule_to_slay/presentation/widgets/common/highlight_w_text.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/transform_card.dart';

class MainBoard extends StatelessWidget {
  const MainBoard({super.key});

  bool isLargeScreen(double screenWidth) {
    return screenWidth > 1000;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        children: [
          Center(
            child: Text(
              AppLocalizations.of(context)!.howToPlayScreen_mainBoard_title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          IntrinsicHeight(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              foregroundDecoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange.withOpacity(0.5),
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Expanded(
                      flex: 2,
                      child: HighlightWText(
                        text: AppLocalizations.of(context)!
                            .howToPlayScreen_mainBoard_dimension1,
                        toggleMode: ToggleMode.FirstVisibility,
                        autoToggle: true,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: screenWidth * 0.15,
                              constraints: BoxConstraints(
                                maxWidth: 85,
                              ),
                              child: ResponsiveAspectCard(
                                maxWidth: 85,
                                aspectRatio: cardAspectRatios[CardSize.large]!,
                                child:
                                    Image.asset(AssetImgs.monster_abyss_queen),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.15,
                              constraints: BoxConstraints(
                                maxWidth: 85,
                              ),
                              child: ResponsiveAspectCard(
                                maxWidth: 85,
                                aspectRatio: cardAspectRatios[CardSize.large]!,
                                child:
                                    Image.asset(AssetImgs.monster_abyss_queen),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.15,
                              constraints: BoxConstraints(
                                maxWidth: 85,
                              ),
                              child: ResponsiveAspectCard(
                                maxWidth: 85,
                                aspectRatio: cardAspectRatios[CardSize.large]!,
                                child:
                                    Image.asset(AssetImgs.monster_abyss_queen),
                              ),
                            ),
                          ],
                        ),
                      )),
                  HighlightWText(
                      text: AppLocalizations.of(context)!
                          .howToPlayScreen_mainBoard_dimension2,
                      toggleMode: ToggleMode.FirstVisibility,
                      autoToggle: true,
                      child: Container(
                        width: screenWidth * 0.15,
                        constraints: BoxConstraints(
                          maxWidth: 85,
                        ),
                        child: ResponsiveAspectCard(
                          maxWidth: 85,
                          aspectRatio: cardAspectRatios[CardSize.large]!,
                          child: Image.asset(AssetImgs.big_black_background),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HighlightWText(
                          text: AppLocalizations.of(context)!
                              .howToPlayScreen_mainBoard_dimension3,
                          toggleMode: ToggleMode.FirstVisibility,
                          autoToggle: true,
                          child: TransformDisplayCard(
                            height: isLargeScreen(screenWidth) ? 100 : 80,
                            width: isLargeScreen(screenWidth) ? 80 : 60,
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            rotateZ: -1.5708, // 90 degrees in radians
                            shadows: [],
                            imageUrl: AssetImgs.small_white_background,
                          ),
                        ),
                        HighlightWText(
                          text: AppLocalizations.of(context)!
                              .howToPlayScreen_mainBoard_dimension4,
                          toggleMode: ToggleMode.FirstVisibility,
                          autoToggle: true,
                          child: TransformDisplayCard(
                            height: isLargeScreen(screenWidth) ? 100 : 80,
                            width: isLargeScreen(screenWidth) ? 80 : 60,
                            border: Border.all(
                              color: Colors.orange,
                              width: 2,
                            ),
                            rotateZ: -1.5708, // 90 degrees in radians
                            shadows: [],
                            imageUrl: AssetImgs.small_white_background,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
