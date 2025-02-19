import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/presentation/widgets/common/divider.dart';

class BaseIntroduction extends StatelessWidget {
  const BaseIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DecorDevider(
          text: AppLocalizations.of(context)!.howToPlayScreen_whatsgameabout,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!
                    .howToPlayScreen_welcomeToHereToSlay,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context)!.howToPlayScreen_gameDescription,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context)!.howToPlayScreen_firstPlayerWins,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              Text(
                AppLocalizations.of(context)!.howToPlayScreen_gameDuration,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
