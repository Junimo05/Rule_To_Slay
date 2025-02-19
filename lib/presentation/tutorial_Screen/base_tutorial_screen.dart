import 'package:flutter/material.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/base_box_description.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/base_howToPlay.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/base_introduction.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/base_set_up.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/bottom_decor_bar.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/top_app_decor_bar.dart';

class BaseTutorialScreen extends StatelessWidget {
  const BaseTutorialScreen({super.key});

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
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(height: 20),
                BaseIntroduction(),
                BaseBoxDescription(),
                BaseSetUp(),
                BaseHowtoplay()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
