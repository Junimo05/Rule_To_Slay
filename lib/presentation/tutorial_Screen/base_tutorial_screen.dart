import 'package:flutter/material.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/bottom_decor_bar.dart';
import 'package:rule_to_slay/presentation/widgets/common/divider.dart';
import 'package:rule_to_slay/presentation/widgets/common/top_app_decor_bar.dart';

class BaseTutorialScreen extends StatelessWidget {
  const BaseTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomDecorBar(),
      appBar: TopAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetImgs.mainBg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  DecorDevider(
                    text: "WHAT'S THE GAME ABOUT?",
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'This is a simple game, you just need to tap on the screen to make the character jump over the obstacles. The game will end when the character hits the obstacle.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Good luck!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
