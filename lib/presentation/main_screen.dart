import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/router/router.dart';
import 'package:rule_to_slay/application/router/routes.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/bottom_decor_bar.dart';
import 'package:rule_to_slay/presentation/widgets/redirect_card_item.dart';
import 'package:rule_to_slay/presentation/widgets/reveal_text.dart';
import 'package:rule_to_slay/presentation/widgets/common/top_app_decor_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomDecorBar(),
        appBar: TopAppBar(),
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetImgs.mainBg),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(children: [
              _introduceText(),
              RedirectCardItem(
                leadingIcon: Icons.play_arrow,
                text: 'How To Play',
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                onTap: () {
                  router.push(Routes.baseTutorialScreen);
                },
              ),
              TextButton(
                onPressed: () {
                  router.go(Routes.splashScreen);
                },
                child: const Text('Go to Splash Screen',
                    style: TextStyle(color: Colors.white)),
              ),
            ]),
          ),
        ));
  }

  Widget _introduceText() {
    return Column(
      children: [
        RevealText(
          text: AppLocalizations.of(context)!.mainScreen_welcome,
          textStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decorationColor: Colors.white,
          ),
        ),
        RevealText(
          text: 'Wiki, Tools and more about Here To Slay Board Game',
          textStyle: TextStyle(
            fontSize: 14,
            color: Colors.white,
            decorationColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
