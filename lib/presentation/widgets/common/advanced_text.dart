import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:rule_to_slay/application/app_localizations.dart';

class Advancedtext extends StatelessWidget {
  final String text;
  final bool isAutoSize;
  final Map<String, TextStyle> keywordStyles;
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

  const Advancedtext({
    super.key,
    required this.text,
    this.keywordStyles = const {
      'DRAW': TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      'Hero': TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      'Item': TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      'Magic': TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
      'DISCARD': TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
      'SLAY': TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
      'PartyLeader': TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
      'Monster': TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),
      'ATTACK': TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      'CHALLENGE': TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      'DESTROY': TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      'SACRIFICE': TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
      'STEAL': TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
      'MODIFIER': TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
    },
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
    this.isAutoSize = true,
    this.selectionColor,
  });

  @override
  Widget build(BuildContext context) {
    if (isAutoSize) {
      return AutoSizeText.rich(
        _buildTextSpan(context),
        key: key,
        textAlign: textAlign,
        maxLines: maxLines,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
        stepGranularity: stepGranularity,
        overflow: overflow,
        strutStyle: strutStyle,
        textDirection: textDirection,
        group: groupName,
        presetFontSizes: presetFontSizes,
        softWrap: softWrap,
        wrapWords: wrapWords ?? false,
        textScaleFactor: textScaleFactor,
        style: style,
        locale: locale,
        semanticsLabel: semanticsLabel,
        overflowReplacement: overflowReplacement,
      );
    } else {
      return Text.rich(
        _buildTextSpan(context),
        key: key,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
        strutStyle: strutStyle,
        textDirection: textDirection,
        softWrap: softWrap,
        selectionColor: selectionColor,
        textScaleFactor: textScaleFactor,
        style: style,
        locale: locale,
        semanticsLabel: semanticsLabel,
      );
    }
  }

  TextSpan _buildTextSpan(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final regex = RegExp(r'«(\w+)»');
    // final regex = RegExp(r'\*\*(\w+)\*\*');
    final spans = <TextSpan>[];
    int lastIndex = 0;

    for (final match in regex.allMatches(text)) {
      if (match.start > lastIndex) {
        spans.add(TextSpan(text: text.substring(lastIndex, match.start)));
      }

      final keyword = match.group(1)!;

      spans.add(
        TextSpan(
          text: keyword,
          style: keywordStyles[_getKeywordValue(keyword, loc!)],
        ),
      );

      lastIndex = match.end;
    }

    if (lastIndex < text.length) {
      spans.add(TextSpan(text: text.substring(lastIndex)));
    }

    return TextSpan(
      children: spans,
      style: DefaultTextStyle.of(context).style,
    );
  }

  String _getKeywordValue(String keyword, AppLocalizations loc) {
    switch (keyword) {
      case 'DRAW':
        return loc.keyword_DRAW;
      case 'Hero':
        return loc.keyword_Hero;
      case 'Item':
        return loc.keyword_Item;
      case 'Magic':
        return loc.keyword_Magic;
      case 'PartyLeader':
        return loc.keyword_PartyLeader;
      case 'Monster':
        return loc.keyword_Monster;
      case 'ATTACK':
        return loc.keyword_ATTACK;
      case 'CHALLENGE':
        return loc.keyword_CHALLENGE;
      case 'DESTROY':
        return loc.keyword_DESTROY;
      case 'DISCARD':
        return loc.keyword_DISCARD;
      case 'SACRIFICE':
        return loc.keyword_SACRIFICE;
      case 'STEAL':
        return loc.keyword_STEAL;
      case 'SLAY':
        return loc.keyword_SLAY;
      case 'MODIFIER':
        return loc.keyword_MODIFIER;
      default:
        return '{$keyword}';
    }
  }
}
