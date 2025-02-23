import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/const.dart';
import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/presentation/widgets/common/advanced_text.dart';
import 'package:rule_to_slay/presentation/widgets/common/card/responsive_aspect_card.dart';
import 'package:rule_to_slay/presentation/widgets/common/step_container.dart';

class HowtoplayDisplay extends StatefulWidget {
  const HowtoplayDisplay({super.key});
  static const _wideLayoutBreakpoint = 880.0;

  @override
  State<StatefulWidget> createState() => _HowtoplayDisplayState();
}

class _HowtoplayDisplayState extends State<HowtoplayDisplay> {
  static const _blinkInterval = Duration(seconds: 1);

  int _consumedAp = -1;
  int _selectedCardIndex = -1;
  bool _isBlinking = false;
  Timer? _blinkTimer;

  List<ActionData>? widgetData;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadWidgetData();
  }

  void _loadWidgetData() {
    //TODO: GET DATA
    final loc = AppLocalizations.of(context);
    widgetData = [
      ActionData(
        action: loc!.howToPlayScreen_gamePlay_Play_DrawCard,
        des: loc.howToPlayScreen_gamePlay_Play_DrawCardDes,
        cardUrl: AssetImgs.small_white_background,
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: loc.howToPlayScreen_gamePlay_Play_PlayCard,
        des: loc.howToPlayScreen_gamePlay_Play_PlayCardDes,
        cardUrl: [
          AssetImgs.hero_example,
          AssetImgs.item_example,
          AssetImgs.magic_example,
        ],
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: loc.howToPlayScreen_gamePlay_Play_useHeroEff,
        des: loc.howToPlayScreen_gamePlay_Play_useHeroEffDes,
        cardUrl: AssetImgs.hero_example,
        ap: 1,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
      ActionData(
        action: loc.howToPlayScreen_gamePlay_Play_SlayMonster,
        des: loc.howToPlayScreen_gamePlay_Play_SlayMonsterDes,
        cardUrl: AssetImgs.monster_example,
        ap: 2,
        aspectRatio: cardAspectRatios[CardSize.large],
      ),
      ActionData(
        action: loc.howToPlayScreen_gamePlay_Play_DISCARD,
        des: loc.howToPlayScreen_gamePlay_Play_DISCARDDes,
        cardUrl: AssetImgs.small_white_background,
        ap: 3,
        aspectRatio: cardAspectRatios[CardSize.small],
      ),
    ];
  }

  void _toggleBlinkEffect() {
    _blinkTimer?.cancel();
    _blinkTimer = Timer.periodic(_blinkInterval, (_) {
      if (mounted) setState(() => _isBlinking = !_isBlinking);
    });
  }

  void _handleCardSelection(int ap, int index) {
    setState(() {
      if (_selectedCardIndex == index) {
        _resetSelection();
      } else {
        _updateSelection(ap, index);
      }
    });
  }

  void _updateSelection(int ap, int index) {
    _blinkTimer?.cancel();
    _selectedCardIndex = index;
    _consumedAp = ap;
    _toggleBlinkEffect();
  }

  void _resetSelection() {
    _selectedCardIndex = -1;
    _consumedAp = -1;
    _blinkTimer?.cancel();
    _isBlinking = false;
  }

  @override
  void dispose() {
    _blinkTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widgetData == null) {
      _loadWidgetData();
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final loc = AppLocalizations.of(context)!;
        final screenWidth = constraints.maxWidth;
        final isWideLayout =
            screenWidth >= HowtoplayDisplay._wideLayoutBreakpoint;

        final apDimension = _buildActionPointsColumn(
          apConsume: _consumedAp,
          isBlinking: _isBlinking,
          loc: loc,
        );

        final actionDimension = _buildActionsColumn(
          loc: loc,
          widgetData: widgetData!,
          cardSelectedIndex: _selectedCardIndex,
          onCardSelect: _handleCardSelection,
        );

        final noteDimension = _buildImportantNote(
          loc: loc,
          screenWidth: screenWidth,
          isLayoutHorizon: isWideLayout,
        );

        return Padding(
          padding: const EdgeInsets.all(4),
          child: isWideLayout
              ? _buildLayoutHorizon(
                  apDimension: apDimension,
                  actionDimension: actionDimension,
                  noteDimension: noteDimension,
                )
              : _buildLayoutColumn(
                  apDimension: apDimension,
                  actionDimension: actionDimension,
                  noteDimension: noteDimension,
                ),
        );
      },
    );
  }
}

// ignore: camel_case_types
class _buildLayoutHorizon extends StatelessWidget {
  final Widget apDimension;
  final Widget actionDimension;
  final Widget noteDimension;

  const _buildLayoutHorizon({
    required this.apDimension,
    required this.actionDimension,
    required this.noteDimension,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            apDimension,
            noteDimension,
          ],
        ),
        actionDimension,
      ],
    );
  }
}

// ignore: camel_case_types
class _buildLayoutColumn extends StatelessWidget {
  final Widget apDimension;
  final Widget actionDimension;
  final Widget noteDimension;

  const _buildLayoutColumn({
    required this.apDimension,
    required this.actionDimension,
    required this.noteDimension,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        apDimension,
        actionDimension,
        noteDimension,
      ],
    );
  }
}

// ignore: camel_case_types
class _buildActionPointsColumn extends StatelessWidget {
  final AppLocalizations loc;
  final int apConsume;
  final bool isBlinking;

  const _buildActionPointsColumn({
    required this.apConsume,
    required this.isBlinking,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final isWideScreen = screenWidth >= HowtoplayDisplay._wideLayoutBreakpoint;

    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          width: isWideScreen
              ? screenWidth * 0.45
              : screenWidth, // Limit the width of the Column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Advancedtext(
                  textMode: TextMode.autoSizeRichText,
                  text: loc.howToPlayScreen_gamePlay_Play_APPerTurn,
                  maxLines: 2,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10, // Khoảng cách ngang
                runSpacing: 20, // Khoảng cách dọc
                children: List.generate(3, _buildApIndicator),
              )
            ],
          ),
        ));
  }

  Widget _buildApIndicator(int index) {
    return AnimatedOpacity(
      opacity: apConsume > index && isBlinking ? 0.3 : 1.0,
      duration: Duration(milliseconds: 300),
      child: Container(
        constraints: BoxConstraints.tight(const Size(70, 70)),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
        ),
        child: SvgPicture.asset(
          AssetImgs.actionPoint,
          fit: BoxFit.cover,
          // Change SVG icon color to white
          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _buildImportantNote extends StatelessWidget {
  final AppLocalizations loc;
  final double screenWidth;
  final bool isLayoutHorizon;

  const _buildImportantNote({
    required this.loc,
    required this.screenWidth,
    required this.isLayoutHorizon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isLayoutHorizon ? screenWidth * 0.45 : screenWidth,
      child: StepContainer(
          title: loc.howToPlayScreen_gamePlay_Play_NoteTittle,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //TODO: GET DATA AND LOAD
            children: [
              BuildInstructionItem(
                leading: Icon(Icons.info, color: Colors.blue),
                content: Advancedtext(
                    text: loc.howToPlayScreen_gamePlay_Play_Note1,
                    onKeywordPressed: (keyword, details) {
                      Logger().i('Keyword: $keyword, Details: $details');
                    }),
              ),
              BuildInstructionItem(
                leading: Icon(Icons.info, color: Colors.blue),
                content: Advancedtext(
                  text: loc.howToPlayScreen_gamePlay_Play_Note2,
                  onKeywordPressed: (keyword, details) {
                    Logger().i('Keyword: $keyword, Details: $details');
                  },
                ),
                childPrefix: Icon(Icons.arrow_right, color: Colors.blue),
                expandChildren: true,
                children: [
                  Advancedtext(
                    text: loc.howToPlayScreen_gamePlay_Play_Note2_1,
                    onKeywordPressed: (keyword, details) {
                      Logger().i('Keyword: $keyword, Details: $details');
                    },
                  ),
                  Advancedtext(
                    text: loc.howToPlayScreen_gamePlay_Play_Note2_2,
                    onKeywordPressed: (keyword, details) {
                      Logger().i('Keyword: $keyword, Details: $details');
                    },
                  ),
                ],
              ),
              BuildInstructionItem(
                leading: Icon(Icons.info, color: Colors.blue),
                content: Advancedtext(
                  text: loc.howToPlayScreen_gamePlay_Play_Note3,
                  onKeywordPressed: (keyword, details) {
                    Logger().i('Keyword: $keyword, Details: $details');
                  },
                ),
                children: [
                  Advancedtext(
                    text: loc.howToPlayScreen_gamePlay_Play_Note3_1,
                    onKeywordPressed: (keyword, details) {
                      Logger().i('Keyword: $keyword, Details: $details');
                    },
                  ),
                  Advancedtext(
                    text: loc.howToPlayScreen_gamePlay_Play_Note3_2,
                    onKeywordPressed: (keyword, details) {
                      Logger().i('Keyword: $keyword, Details: $details');
                    },
                  ),
                ],
              ),
              BuildInstructionItem(
                leading: Icon(Icons.info, color: Colors.blue),
                content: Advancedtext(
                  text: loc.howToPlayScreen_gamePlay_Play_Note4,
                  onKeywordPressed: (keyword, details) {
                    Logger().i('Keyword: $keyword, Details: $details');
                  },
                ),
              ),
              BuildInstructionItem(
                leading: Icon(Icons.info, color: Colors.blue),
                content: Advancedtext(
                  text: loc.howToPlayScreen_gamePlay_Play_Note5,
                  onKeywordPressed: (keyword, details) {
                    Logger().i('Keyword: $keyword, Details: $details');
                  },
                ),
              ),
            ],
          )),
    );
  }
}

// ignore: camel_case_types
class _buildActionsColumn extends StatelessWidget {
  static const _cardSpacing = 10.0;
  static const _cardRunSpacing = 20.0;
  static const _carouselHeight = 300.0;
  static const _carouselViewportFraction = 0.5;

  final AppLocalizations loc;
  final List<ActionData> widgetData;
  final int cardSelectedIndex;
  final Function(int, int) onCardSelect;

  const _buildActionsColumn({
    required this.loc,
    required this.widgetData,
    required this.cardSelectedIndex,
    required this.onCardSelect,
  });

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width >=
        HowtoplayDisplay._wideLayoutBreakpoint;

    return SizedBox(
      width: isWideScreen
          ? MediaQuery.of(context).size.width * 0.45
          : MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Advancedtext(
              text: loc.howToPlayScreen_gamePlay_Play_ActPerTurn,
              textMode: TextMode.autoSizeRichText,
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          isWideScreen ? _buildWrapLayout() : _buildCarouselLayout(),
        ],
      ),
    );
  }

  Widget _buildWrapLayout() {
    return Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: _cardSpacing,
        runSpacing: _cardRunSpacing,
        children: widgetData.asMap().entries.map(_buildActionCard).toList());
  }

  Widget _buildCarouselLayout() {
    return CarouselSlider(
      items: widgetData.asMap().entries.map(_buildActionCard).toList(),
      options: CarouselOptions(
        height: _carouselHeight,
        onPageChanged: (index, reason) {
          onCardSelect(widgetData[index].ap, index);
        },
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        viewportFraction: _carouselViewportFraction,
        enableInfiniteScroll: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _buildActionCard(MapEntry<int, ActionData> entry) {
    return GestureDetector(
      onTap: () => onCardSelect(entry.value.ap, entry.key),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: entry.key == cardSelectedIndex
                ? Colors.white
                : Colors.white.withValues(alpha: 0.5),
          ),
        ),
        child: ActionCard(
          data: entry.value,
          isFocus: entry.key == cardSelectedIndex,
        ),
      ),
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
  final ActionData data;
  final bool isFocus;

  static const double minCardWidth = 200;
  static const double maxCardWidth = 240;
  static const double minCardHeight = 250;
  static const Duration imgSwitchDuration = Duration(seconds: 4);
  static const Duration focusDuration = Duration(milliseconds: 300);

  const ActionCard({
    required this.data,
    super.key,
    required this.isFocus,
  });

  @override
  State<ActionCard> createState() => _ActionCardState();
}

class _ActionCardState extends State<ActionCard>
    with SingleTickerProviderStateMixin {
  int _currentImageIndex = 0;
  late List<String> _carouselImages;
  Timer? _timer;
  late AnimationController _focusAnimationController;
  late Animation<double> _focusAnimation;
  @override
  void initState() {
    super.initState();
    _initializeImageCarousel();
    _setupFocusAnimation();
  }

  @override
  void didUpdateWidget(ActionCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isFocus != widget.isFocus) {
      _updateAnimationState();
    }

    if (oldWidget.data.cardUrl != widget.data.cardUrl) {
      _resetImageCarousel();
    }
  }

  //Focus Animation for description card
  void _setupFocusAnimation() {
    _focusAnimationController = AnimationController(
      vsync: this,
      duration: ActionCard.focusDuration,
    );

    _focusAnimation = CurvedAnimation(
      parent: _focusAnimationController,
      curve: Curves.easeInOut,
    );

    _updateAnimationState();
  }

  void _updateAnimationState() {
    widget.isFocus
        ? _focusAnimationController.forward()
        : _focusAnimationController.reverse();
  }

  //Image Carousel for multiple images display
  void _initializeImageCarousel() {
    if (widget.data.cardUrl is List<String>) {
      _carouselImages = widget.data.cardUrl as List<String>;
      if (_carouselImages.isNotEmpty) {
        _startImageCarousel();
      }
    }
  }

  void _startImageCarousel() {
    _timer?.cancel();
    _timer = Timer.periodic(
      ActionCard.imgSwitchDuration,
      _handleCarouselTick,
    );
  }

  void _resetImageCarousel() {
    _timer?.cancel();
    _currentImageIndex = 0;
    _initializeImageCarousel();
  }

  void _handleCarouselTick(Timer timer) {
    if (!mounted) {
      timer.cancel();
      return;
    }
    setState(() {
      _currentImageIndex = (_currentImageIndex + 1) % _carouselImages.length;
    });
  }

  @override
  void dispose() {
    _focusAnimationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
          maxWidth: ActionCard.maxCardWidth,
          minHeight: ActionCard.minCardHeight,
          minWidth: ActionCard.minCardWidth),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //
          _buildImageContainer(),
          SizedBox(height: 8),
          _buildActionContent(),
          //
          FadeTransition(
            opacity: _focusAnimation,
            child: SizeTransition(
              axisAlignment: 1.0,
              sizeFactor: _focusAnimation,
              child: _buildDescription(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Action text và AP
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          constraints: const BoxConstraints(minWidth: 80),
          child: Advancedtext(
            textMode: TextMode.autoSizeRichText,
            text: widget.data.action,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            minFontSize: 10,
            maxFontSize: 14,
            wrapWords: false,
            onKeywordPressed: (keyword, details) {
              Logger().i('Keyword: $keyword, Details: $details');
            },
          ),
        ),
      ],
    );
  }

  Widget _buildImageContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      constraints: const BoxConstraints(
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Center(
          child: ResponsiveAspectCard(
        aspectRatio: widget.data.aspectRatio ?? 1.0,
        child: _buildImageContent(),
      )),
    );
  }

  //Image content: Single image or image carousel
  Widget _buildImageContent() {
    if (widget.data.cardUrl is String) {
      return Image.asset(
        widget.data.cardUrl as String,
        fit: BoxFit.cover,
      );
    }

    return _carouselImages.isEmpty
        ? const SizedBox()
        : AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: Image.asset(
              _carouselImages[_currentImageIndex],
              key: ValueKey(_currentImageIndex),
              fit: BoxFit.cover,
            ),
          );
  }

  //Description Card
  Widget _buildDescription() {
    return Center(
      child: Advancedtext(
        textMode: TextMode.autoSizeRichText,
        text: widget.data.des,
        style: const TextStyle(
          fontStyle: FontStyle.italic,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        wrapWords: false,
        minFontSize: 8,
        maxFontSize: 12,
      ),
    );
  }
}
