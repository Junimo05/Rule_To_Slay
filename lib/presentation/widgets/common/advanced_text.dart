import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:rule_to_slay/application/app_localizations.dart';
import 'package:rule_to_slay/constants/const.dart';

enum TextMode { autoSizeRichText, richText }

enum TextScaleStrategy { responsive, fixed, adaptive }

class Advancedtext extends StatefulWidget {
  final String text;
  final TextMode textMode;
  final Map<String, TextStyle> keywordStyles;
  final Map<String, InlineSpan> customElements;
  final TextScaleStrategy scaleStrategy;
  final void Function(String keyword, TapDownDetails details)? onKeywordPressed;
  final ValueChanged<String>? onElementPressed;
  final bool enableCache;
  final Duration cacheDuration;
  final double scalingFactor;
  final double minScalingWidth;
  final double maxScalingWidth;
  final Color? selectionColor;
  final TextAlign textAlign;
  final int? maxLines;
  final double minFontSize;
  final double maxFontSize;
  final double stepGranularity;
  final TextOverflow overflow;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final AutoSizeGroup? groupName;
  final List<double>? presetFontSizes;
  final bool? softWrap;
  final bool? wrapWords;
  final double? textScaleFactor;
  final TextStyle? style;
  final Locale? locale;
  final String? textKey;
  final String? semanticsLabel;
  final Widget? overflowReplacement;

  static final _textParser = _AdvancedTextParser();
  static final _keywordMapping = {
    GameKeyWord.AP: (AppLocalizations loc) => loc.keyword_AP,
    GameKeyWord.Immediately: (AppLocalizations loc) => loc.keyword_Imdediately,
    GameKeyWord.DRAW: (AppLocalizations loc) => loc.keyword_DRAW,
    GameKeyWord.Hero: (AppLocalizations loc) => loc.keyword_Hero,
    GameKeyWord.Item: (AppLocalizations loc) => loc.keyword_Item,
    GameKeyWord.Magic: (AppLocalizations loc) => loc.keyword_Magic,
    GameKeyWord.DISCARD: (AppLocalizations loc) => loc.keyword_DISCARD,
    GameKeyWord.SLAY: (AppLocalizations loc) => loc.keyword_SLAY,
    GameKeyWord.PartyLeader: (AppLocalizations loc) => loc.keyword_PartyLeader,
    GameKeyWord.Monster: (AppLocalizations loc) => loc.keyword_Monster,
    GameKeyWord.ATTACK: (AppLocalizations loc) => loc.keyword_ATTACK,
    GameKeyWord.CHALLENGE: (AppLocalizations loc) => loc.keyword_CHALLENGE,
    GameKeyWord.DESTROY: (AppLocalizations loc) => loc.keyword_DESTROY,
    GameKeyWord.SACRIFICE: (AppLocalizations loc) => loc.keyword_SACRIFICE,
    GameKeyWord.STEAL: (AppLocalizations loc) => loc.keyword_STEAL,
    GameKeyWord.MODIFIER: (AppLocalizations loc) => loc.keyword_MODIFIER,
  };

  const Advancedtext({
    super.key,
    required this.text,
    this.textMode = TextMode.autoSizeRichText,
    this.keywordStyles = const {
      GameKeyWord.AP:
          TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      GameKeyWord.Immediately:
          TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      GameKeyWord.DRAW:
          TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      GameKeyWord.Hero:
          TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      GameKeyWord.Item:
          TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      GameKeyWord.Magic:
          TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
      GameKeyWord.DISCARD:
          TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
      GameKeyWord.SLAY:
          TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
      GameKeyWord.PartyLeader:
          TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
      GameKeyWord.Monster:
          TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
      GameKeyWord.ATTACK:
          TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      GameKeyWord.CHALLENGE:
          TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      GameKeyWord.DESTROY:
          TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      GameKeyWord.SACRIFICE:
          TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
      GameKeyWord.STEAL:
          TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
      GameKeyWord.MODIFIER:
          TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
    },
    this.customElements = const {},
    this.scaleStrategy = TextScaleStrategy.adaptive,
    this.onKeywordPressed,
    this.onElementPressed,
    this.enableCache = true,
    this.cacheDuration = const Duration(minutes: 10),
    this.scalingFactor = 1.0,
    this.minScalingWidth = 320,
    this.maxScalingWidth = 1440,
    this.textAlign = TextAlign.start,
    this.maxLines = 5,
    this.minFontSize = 10,
    this.maxFontSize = 20,
    this.stepGranularity = 1,
    this.overflow = TextOverflow.ellipsis,
    this.strutStyle,
    this.textDirection,
    this.groupName,
    this.presetFontSizes,
    this.softWrap,
    this.wrapWords,
    this.textScaleFactor,
    this.style,
    this.locale,
    this.textKey,
    this.semanticsLabel,
    this.overflowReplacement,
    this.selectionColor,
  });

  @override
  State<Advancedtext> createState() => _AdvancedtextState();
}

class _AdvancedtextState extends State<Advancedtext> {
  @override
  void didUpdateWidget(Advancedtext oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final textSpan = Advancedtext._textParser.parse(
      text: widget.text,
      loc: loc,
      keywordPress: widget.onKeywordPressed,
      elementPress: widget.onElementPressed,
      keywordStyles: widget.keywordStyles,
      defaultStyle: widget.style ?? DefaultTextStyle.of(context).style,
      enableCache: widget.enableCache,
      cacheDuration: widget.cacheDuration,
    );

    return widget.textMode == TextMode.autoSizeRichText
        ? _buildAutoSizeText(textSpan)
        : _buildRichText(textSpan);
  }

  Widget _buildAutoSizeText(TextSpan textSpan) {
    return AutoSizeText.rich(
      textSpan,
      key: widget.key,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines,
      minFontSize: widget.minFontSize,
      maxFontSize: widget.maxFontSize,
      stepGranularity: widget.stepGranularity,
      overflow: widget.overflow,
      strutStyle: widget.strutStyle,
      textDirection: widget.textDirection,
      group: widget.groupName,
      presetFontSizes: widget.presetFontSizes,
      softWrap: widget.softWrap,
      wrapWords: widget.wrapWords ?? false,
      textScaleFactor: widget.textScaleFactor,
      locale: widget.locale,
      semanticsLabel: widget.semanticsLabel,
      overflowReplacement: widget.overflowReplacement,
    );
  }

  Widget _buildRichText(TextSpan textSpan) {
    return Text.rich(
      textSpan,
      key: widget.key,
      textAlign: widget.textAlign,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      strutStyle: widget.strutStyle,
      textDirection: widget.textDirection,
      softWrap: widget.softWrap,
      selectionColor: widget.selectionColor,
      textScaleFactor: widget.textScaleFactor,
      locale: widget.locale,
      semanticsLabel: widget.semanticsLabel,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class _AdvancedTextParser {
  static final _cache = <String, _CacheEntry>{};
  static final _regex = RegExp(r'<<([^>>]+)>>');

  TextSpan parse({
    required String text,
    required AppLocalizations? loc,
    required void Function(String, TapDownDetails)? keywordPress,
    required ValueChanged<String>? elementPress,
    required Map<String, TextStyle> keywordStyles,
    required TextStyle defaultStyle,
    required bool enableCache,
    required Duration cacheDuration,
  }) {
    if (enableCache) {
      final cacheKey = '${loc?.localeName}-$text-${keywordStyles.hashCode}';
      final existingEntry = _cache[cacheKey];
      if (existingEntry != null) {
        if (!existingEntry.isExpired) {
          return existingEntry.textSpan;
        } else {
          _cache.remove(cacheKey);
        }
      }
      final textSpan = _parse(
          text, loc, keywordPress, elementPress, keywordStyles, defaultStyle);
      _cache[cacheKey] = _CacheEntry(textSpan, DateTime.now(), cacheDuration);
      return textSpan;
    } else {
      return _parse(
          text, loc, keywordPress, elementPress, keywordStyles, defaultStyle);
    }
  }

  TextSpan _parse(
    String text,
    AppLocalizations? loc,
    void Function(String, TapDownDetails)? keywordPress,
    ValueChanged<String>? elementPress,
    Map<String, TextStyle> keywordStyles,
    TextStyle defaultStyle,
  ) {
    final spans = <TextSpan>[];
    var lastIndex = 0;

    for (final match in _regex.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(
          text: text.substring(lastIndex, match.start),
          style: defaultStyle,
        ));
      }

      final keyword = match.group(1)!;
      final keywordValue =
          Advancedtext._keywordMapping[keyword]?.call(loc!) ?? keyword;

      //check if keyword press is not null
      if (keywordPress != null) {
        spans.add(TextSpan(
          text: keywordValue,
          style: keywordStyles[keyword] ??
              defaultStyle.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
          recognizer: TapGestureRecognizer()
            ..onTapDown = (details) {
              keywordPress(
                keyword,
                details,
              );
            },
        ));
      } else {
        spans.add(TextSpan(
          text: keywordValue,
          style: keywordStyles[keyword] ??
              defaultStyle.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
        ));
      }

      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(
        text: text.substring(lastIndex),
        style: defaultStyle,
      ));
    }

    return TextSpan(children: spans);
  }
}

class _CacheEntry {
  final TextSpan textSpan;
  final DateTime timestamp;
  final Duration duration;

  _CacheEntry(this.textSpan, this.timestamp, this.duration);

  bool get isExpired => DateTime.now().difference(timestamp) > duration;
}
