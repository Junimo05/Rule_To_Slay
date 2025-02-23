import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/howtoplay_display.dart';
import 'package:rule_to_slay/presentation/widgets/common/decor_divider.dart';

class BaseHowtoplay extends StatefulWidget {
  const BaseHowtoplay({super.key});
  @override
  State<BaseHowtoplay> createState() => _BaseHowtoplayState();
}

class _BaseHowtoplayState extends State<BaseHowtoplay> {
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        DecorDevider(
          text:
              AppLocalizations.of(context)!.howToPlayScreen_gamePlay_Play_title,
        ),
        //
        HowtoplayDisplay()
      ],
    );
  }
}
