import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/responsive_aspect_card.dart';
import 'package:rule_to_slay/presentation/widgets/common/highlight_w_text.dart';

class PlayerBoard extends StatelessWidget {
  const PlayerBoard({super.key});

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
              AppLocalizations.of(context)!.howToPlayScreen_playerBoard_title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Stack(
            children: [
              IntrinsicHeight(
                child: Container(
                  width: screenWidth,
                  constraints: BoxConstraints(
                    maxWidth: 500,
                  ),
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange.withOpacity(0.5),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 32), // Adjusted padding
                      child: Column(
                        children: [
                          HighlightWText(
                            autoToggle: true,
                            toggleMode: ToggleMode.FirstVisibility,
                            text: AppLocalizations.of(context)!
                                .howToPlayScreen_playerBoard_dimension1,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (var i = 0; i < 5; i++)
                                  Container(
                                    height: screenHeight *
                                        0.2 /
                                        cardAspectRatios[CardSize.small]!,
                                    width: screenWidth * 0.2 - 4 * 1 / 0.2,
                                    constraints: BoxConstraints(
                                      maxWidth: 80,
                                      maxHeight: 80 /
                                          cardAspectRatios[CardSize.small]!,
                                    ),
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.orange,
                                        width: 2,
                                      ),
                                    ),
                                  )
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HighlightWText(
                                toggleMode: ToggleMode.FirstVisibility,
                                autoToggle: true,
                                text: AppLocalizations.of(context)!
                                    .howToPlayScreen_playerBoard_dimension2,
                                child: SizedBox(
                                  width: 100,
                                  child: ResponsiveAspectCard(
                                    aspectRatio:
                                        cardAspectRatios[CardSize.large]!,
                                    child: Image.asset(AssetImgs
                                        .partyLeader_TheProtectingHorn),
                                  ),
                                ),
                              ),
                              HighlightWText(
                                autoToggle: true,
                                toggleMode: ToggleMode.FirstVisibility,
                                text: AppLocalizations.of(context)!
                                    .howToPlayScreen_playerBoard_dimension3,
                                child: Row(
                                  children: [
                                    for (var i = 0; i < 3; i++)
                                      Container(
                                        height: 100 /
                                            cardAspectRatios[CardSize.large]!,
                                        width:
                                            screenWidth * 0.25 - 4 * 1 / 0.25,
                                        constraints: BoxConstraints(
                                          maxWidth: 100,
                                          maxHeight: 100 /
                                              cardAspectRatios[CardSize.large]!,
                                        ),
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blueGrey,
                                            width: 2,
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Text Player
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.orange,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                  child: Center(
                    child: Text(
                      'Player 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
