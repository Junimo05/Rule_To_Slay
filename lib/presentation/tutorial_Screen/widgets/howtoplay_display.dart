import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/assets_const.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/advanced_text.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/responsive_aspect_card.dart';

class HowtoplayDisplay extends StatefulWidget {
  const HowtoplayDisplay({super.key});

  @override
  State<StatefulWidget> createState() => _HowtoplayDisplayState();
}

class _HowtoplayDisplayState extends State<HowtoplayDisplay> {
  int apConsume = -1;
  int cardSelected = -1;
  bool isBlinking = false;
  Timer? _timer;

  late final List<ActionData> widgetData;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final loc = AppLocalizations.of(context);
    widgetData = [
      //TODO: TEST WORD WORKING
      ActionData(
        action: loc!.howToPlayScreen_gamePlay_Play_DrawCard,
        des: '**${loc.keyword_DRAW}** a card from the deck',
        cardUrl: AssetImgs.small_white_background,
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: 'Play a Card',
        des: 'Play a Hero, Item, or Magic card',
        cardUrl: [
          AssetImgs.hero_example,
          AssetImgs.item_example,
          AssetImgs.magic_example,
        ],
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: 'Use a Hero Effect',
        des: 'Use a effect from a Hero card',
        cardUrl: AssetImgs.hero_example,
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: 'ATTACK a Monster card',
        des: 'Time to SLAY',
        cardUrl: AssetImgs.monster_example,
        ap: 2,
        aspectRatio: cardAspectRatios[CardSize.large],
      ),
      ActionData(
        action: 'DISCARD all hand cards',
        des: 'Then DRAW new 5 cards',
        cardUrl: AssetImgs.small_white_background,
        ap: 3,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
    ];
  }

  void startBlinking() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        isBlinking = !isBlinking;
      });
    });
  }

  void stopBlinking() {
    _timer?.cancel();
    setState(() {
      isBlinking = false;
    });
  }

  void handleTap(int ap, int cardSelect) {
    setState(() {
      if (cardSelect == cardSelected) {
        cardSelected = -1;
        apConsume = -1;
        stopBlinking();
      } else {
        stopBlinking();
        cardSelected = cardSelect;
        apConsume = ap;
        startBlinking();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    stopBlinking();
    handleTap(-1, -1);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildActionPointsColumn(
                  screenWidth: screenWidth,
                  apConsume: apConsume,
                  isBlinking: isBlinking,
                ),
                _buildActionsColumn(
                  screenWidth: screenWidth,
                  widgetData: widgetData,
                  cardSelected: cardSelected,
                  handleTap: handleTap,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ignore: camel_case_types
class _buildActionPointsColumn extends StatelessWidget {
  final double screenWidth;
  final int apConsume;
  final bool isBlinking;

  const _buildActionPointsColumn({
    required this.screenWidth,
    required this.apConsume,
    required this.isBlinking,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth * 0.45, // Limit the width of the Column
          child: Center(
            child: Advancedtext(
              text: 'Action Points Available per Turn',
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.45,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 10, // Khoảng cách ngang
            runSpacing: 20, // Khoảng cách dọc
            children: List.generate(3, (index) {
              return AnimatedOpacity(
                opacity: apConsume > index && isBlinking ? 0.3 : 1.0,
                duration: Duration(milliseconds: 800),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 100,
                    maxHeight: 100,
                    minHeight: 70,
                    minWidth: 70,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                      child: SvgPicture.asset(
                    AssetImgs.actionPoint,
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    width: screenWidth * 0.1,
                    height: screenWidth * 0.1,
                  )),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class _buildActionsColumn extends StatelessWidget {
  final double screenWidth;
  final List<ActionData> widgetData;
  final int cardSelected;
  final Function(int, int) handleTap;

  const _buildActionsColumn({
    required this.screenWidth,
    required this.widgetData,
    required this.cardSelected,
    required this.handleTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: screenWidth * 0.45, // Limit the width of the Column
          child: Center(
            child: AutoSizeText(
              'Actions Available per Turn',
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.5,
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 10, // Khoảng cách ngang
            runSpacing: 20, // Khoảng cách dọc
            children: List.generate(widgetData.length, (index) {
              return GestureDetector(
                onTap: () => handleTap(widgetData[index].ap, index),
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: cardSelected == index
                          ? Colors.blue
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: ActionCard(
                    action: widgetData[index].action,
                    des: widgetData[index].des,
                    cardUrl: widgetData[index].cardUrl,
                    aspectRatio: widgetData[index].aspectRatio,
                    ap: widgetData[index].ap,
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}

class ActionData {
  final String action;
  final String des;
  final dynamic
      cardUrl; // Allow cardUrl to be either a String or a List<String>
  final double? aspectRatio;
  final int ap;

  ActionData({
    required this.action,
    required this.des,
    this.cardUrl,
    required this.ap,
    this.aspectRatio,
  });
}

class ActionCard extends StatefulWidget {
  final String action;
  final String des;
  final dynamic
      cardUrl; // Allow cardUrl to be either a String or a List<String>
  final double? aspectRatio;
  final int ap;

  const ActionCard({
    required this.action,
    required this.des,
    this.cardUrl,
    required this.ap,
    super.key,
    this.aspectRatio,
  });

  @override
  State<ActionCard> createState() => _ActionCardState();
}

class _ActionCardState extends State<ActionCard>
    with SingleTickerProviderStateMixin {
  int _currentImageIndex = 0;
  Timer? _timer;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    if (widget.cardUrl is List<String>) {
      _startImageRotation();
    }
  }

  void _startImageRotation() {
    _timer = Timer.periodic(Duration(seconds: 4), (timer) {
      _animationController.reverse().then((_) {
        setState(() {
          _currentImageIndex = (_currentImageIndex + 1) %
              (widget.cardUrl as List<String>).length;
        });
        Future.delayed(Duration(seconds: 2), () {
          _animationController.forward();
        });
      });
    });
    _animationController.forward();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        constraints: BoxConstraints(
          maxWidth: 200,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.05,
                  constraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  child: Column(
                    children: [
                      // AutoSizeText(
                      //   widget.action,
                      //   overflow: TextOverflow.clip,
                      //   textAlign: TextAlign.center,
                      //   minFontSize: 12,
                      //   maxFontSize: 16,
                      //   wrapWords: false,
                      // ),
                      Advancedtext(
                        isAutoSize: true,
                        text: widget.action,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        minFontSize: 12,
                        maxFontSize: 16,
                        wrapWords: false,
                      ),
                      SizedBox(height: 5),
                      AutoSizeText(
                        'AP: ${widget.ap}',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                if (widget.cardUrl != null)
                  Container(
                    width: screenWidth * 0.14,
                    constraints: BoxConstraints(
                      maxWidth: 80,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.5),
                        width: 2,
                      ),
                    ),
                    child: ResponsiveAspectCard(
                      maxWidth: 80,
                      aspectRatio: widget.aspectRatio!,
                      child: widget.cardUrl is String
                          ? Image.asset(
                              widget.cardUrl,
                              fit: BoxFit.cover,
                            )
                          : FadeTransition(
                              opacity: _fadeAnimation,
                              child: Image.asset(
                                fit: BoxFit.cover,
                                (widget.cardUrl
                                    as List<String>)[_currentImageIndex],
                              ),
                            ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 10),
            // AutoSizeText(
            //   widget.des,
            //   maxLines: 2,
            //   overflow: TextOverflow.ellipsis,
            //   textAlign: TextAlign.center,
            //   minFontSize: 12,
            //   maxFontSize: 16,
            // ),
            Advancedtext(
              isAutoSize: true,
              text: widget.des,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              minFontSize: 12,
              maxFontSize: 16,
            ),
          ],
        ));
  }
}
