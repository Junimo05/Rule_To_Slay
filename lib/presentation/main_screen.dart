import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:rule_to_slay/application/router/router.dart';
import 'package:rule_to_slay/application/router/routes.dart';
import 'package:rule_to_slay/constants/const.dart';
import 'package:rule_to_slay/data/datasoures/json_datasource.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/bottom_decor_bar.dart';
import 'package:rule_to_slay/presentation/widgets/common/redirect_card_item.dart';
import 'package:rule_to_slay/presentation/widgets/reveal_text.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/top_app_decor_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final gameJsonDataSource = GameJsonDataSourceImpl();
    gameJsonDataSource.getMonsters().then((data) {
      Logger().i(data.map((e) => e.toEntity()).toList().length);
    }).catchError((error) {
      Logger().e("Failed to load game data: $error");
    });
    return Scaffold(
      bottomNavigationBar: BottomDecorBar(),
      appBar: TopAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetImgs.mainBg),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _introduceText(),
                    RedirectCardItem(
                      leadingIcon: Icons.play_arrow,
                      text: loc!.redirect_HowToPlay,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      onTap: () {
                        router.push(Routes.howToPlayScreen);
                      },
                    ),
                    SizedBox(height: 20),
                    RedirectCardItem(
                      leadingIcon: Icons.play_arrow,
                      text: loc.redirect_CardList,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      onTap: () {
                        router.push(Routes.cardListScreen);
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        router.go(Routes.splashScreen);
                      },
                      child: const Text('Go to Splash Screen',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
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
