import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/main_board.dart';
import 'package:rule_to_slay/presentation/widgets/common/decor_divider.dart';
import 'package:rule_to_slay/presentation/tutorial_Screen/widgets/player_board.dart';
import 'package:rule_to_slay/presentation/widgets/common/step_container.dart';

class BaseSetUp extends StatelessWidget {
  const BaseSetUp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        DecorDevider(
            text: AppLocalizations.of(context)!.howToPlayScreen_baseSetUp),
        if (screenWidth > 1000) ...[
          Step1Detailed(),
          Step2Detailed(),
          Step3Detailed(),
          Row(
            children: [
              Expanded(
                child: PlayerBoard(),
              ),
              Expanded(
                child: MainBoard(),
              ),
            ],
          ),
        ] else ...[
          Column(
            children: [
              Step1Detailed(),
              PlayerBoard(),
              Step2Detailed(),
              MainBoard(),
              Step3Detailed(),
            ],
          ),
        ],
      ],
    );
  }
}

class Step1Detailed extends StatelessWidget {
  const Step1Detailed({super.key});

  @override
  Widget build(BuildContext context) {
    return StepContainer(
      stepNumber: 1,
      title:
          AppLocalizations.of(context)!.howToPlayScreen_gamePlay_start1_title,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInstructionItem.text(
              icon: Icons.sort,
              text: AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start1_step1),
          BuildInstructionItem.text(
            icon: Icons.person_search,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start1_step2,
            subTexts: [
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start1_step2_1,
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start1_step2_2,
            ],
          ),
          BuildInstructionItem.text(
            icon: Icons.place,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start1_step3,
          ),
          BuildInstructionItem.text(
            icon: Icons.assignment,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start1_step4,
          ),
          BuildInstructionItem.text(
            icon: Icons.archive,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start1_step5,
            subTexts: [
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start1_step5_1,
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start1_step5_2,
            ],
          ),
        ],
      ),
    );
  }
}

class Step2Detailed extends StatelessWidget {
  const Step2Detailed({super.key});

  @override
  Widget build(BuildContext context) {
    return StepContainer(
      stepNumber: 2,
      title:
          AppLocalizations.of(context)!.howToPlayScreen_gamePlay_start2_title,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInstructionItem.text(
            icon: Icons.shuffle,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start2_step1,
          ),
          BuildInstructionItem.text(
            icon: Icons.people_alt,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start2_step2,
          ),
          BuildInstructionItem.text(
            icon: Icons.layers,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start2_step3,
          ),
          BuildInstructionItem.text(
            icon: Icons.delete,
            text:
                '${AppLocalizations.of(context)!.howToPlayScreen_gamePlay_start2_step4}. ${AppLocalizations.of(context)!.howToPlayScreen_gamePlay_start2_step4_1} ',
            subTexts: [
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start2_step4_2,
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start2_step4_3,
              AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start2_step4_4,
            ],
          ),
        ],
      ),
    );
  }
}

class Step3Detailed extends StatelessWidget {
  const Step3Detailed({super.key});

  @override
  Widget build(BuildContext context) {
    return StepContainer(
      stepNumber: 3,
      title:
          AppLocalizations.of(context)!.howToPlayScreen_gamePlay_start3_title,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildInstructionItem.text(
            icon: Icons.shuffle,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start3_step1,
          ),
          BuildInstructionItem.text(
              icon: Icons.flip,
              text: AppLocalizations.of(context)!
                  .howToPlayScreen_gamePlay_start3_step2),
          BuildInstructionItem.text(
            icon: Icons.layers,
            text: AppLocalizations.of(context)!
                .howToPlayScreen_gamePlay_start3_step3,
          ),
        ],
      ),
    );
  }
}
