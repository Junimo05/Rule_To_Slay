import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/const.dart';
import 'package:rule_to_slay/presentation/widgets/common/decor_divider.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/transform_card.dart';

class BaseBoxDescription extends StatefulWidget {
  const BaseBoxDescription({super.key});

  @override
  State<BaseBoxDescription> createState() => _BaseBoxDescriptionState();
}

class _BaseBoxDescriptionState extends State<BaseBoxDescription> {
  late final List<Map<String, String>> baseBoxDes = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        baseBoxDes.addAll([
          {
            "des": AppLocalizations.of(context)!.howToPlayScreen_baseDeckDes1,
            "img": AssetImgs.small_white_background
          },
          {
            "des": AppLocalizations.of(context)!.howToPlayScreen_baseDeckDes2,
            "img": AssetImgs.big_white_background
          },
          {
            "des": AppLocalizations.of(context)!.howToPlayScreen_baseDeckDes3,
            "img": AssetImgs.big_black_background
          },
          {
            "des": AppLocalizations.of(context)!.howToPlayScreen_baseDeckDes4,
            "img": AssetImgs.rule_card
          },
          {
            "des": AppLocalizations.of(context)!.howToPlayScreen_baseDeckDes5,
          }
        ]);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DecorDevider(
          text: AppLocalizations.of(context)!.howToPlayScreen_baseDeck,
        ),
        SizedBox(
          width: screenWidth * 0.8,
          child: Expanded(
            child: Center(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth > 900 ? 5 : 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: screenHeight * 0.35,
                ),
                itemCount: baseBoxDes.length,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (baseBoxDes[index]["img"] != null)
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 90,
                          minHeight: 90,
                        ),
                        child: TransformDisplayCard(
                            imageUrl: baseBoxDes[index]["img"]!),
                      )
                    else
                      SizedBox(height: 0, width: 0),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        baseBoxDes[index]["des"]!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
