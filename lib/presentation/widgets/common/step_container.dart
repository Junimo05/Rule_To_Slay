import 'package:flutter/material.dart';

class StepContainer extends StatelessWidget {
  final int? stepNumber;
  final String title;
  final Widget content;

  const StepContainer({
    super.key,
    this.stepNumber,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[900]?.withAlpha(128),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueGrey[700]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: stepNumber != null
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              if (stepNumber != null) ...[
                Container(
                  width: 32,
                  height: 32,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$stepNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[100],
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          content,
        ],
      ),
    );
  }
}

class BuildInstructionItem extends StatelessWidget {
  final Widget leading;
  final Widget content;
  final List<Widget> children;
  final Widget? childPrefix;
  final EdgeInsetsGeometry padding;
  final double spacing;
  final double childSpacing;
  final CrossAxisAlignment crossAlignment;
  final bool expandChildren;

  const BuildInstructionItem({
    super.key,
    required this.leading,
    required this.content,
    this.children = const [],
    this.childPrefix,
    this.padding = const EdgeInsets.symmetric(vertical: 8),
    this.spacing = 12,
    this.childSpacing = 4,
    this.crossAlignment = CrossAxisAlignment.start,
    this.expandChildren = false,
  });

  factory BuildInstructionItem.text({
    Key? key,
    required IconData icon,
    required String text,
    List<String> subTexts = const [],
    IconData? subIcon,
    Color? iconColor = Colors.blue,
    Color? textColor,
    Color? subTextColor,
    Color? subIconColor = Colors.blue,
    double iconSize = 24,
    double textSize = 16,
    double subTextSize = 14,
    FontWeight textWeight = FontWeight.w500,
    TextAlign textAlign = TextAlign.start,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(vertical: 8),
    double spacing = 12,
    double childSpacing = 4,
    bool expandChildren = false,
  }) {
    return BuildInstructionItem(
      key: key,
      leading: Icon(icon, size: iconSize, color: iconColor),
      content: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          color: textColor,
          fontSize: textSize,
          fontWeight: textWeight,
        ),
      ),
      padding: padding,
      spacing: spacing,
      childSpacing: childSpacing,
      expandChildren: expandChildren,
      children: subTexts
          .map(
            (text) => _buildTextRow(
              text,
              subIcon,
              subIconColor,
              subTextColor,
              subTextSize,
            ),
          )
          .toList(),
    );
  }

  static Widget _buildTextRow(
    String text,
    IconData? icon,
    Color? iconColor,
    Color? color,
    double size,
  ) {
    return Row(
      children: [
        Icon(
          icon ?? Icons.arrow_right,
          size: size,
          color: iconColor?.withValues(alpha: 0.8),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: size,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        crossAxisAlignment: crossAlignment,
        children: [
          leading,
          SizedBox(width: spacing),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                content,
                ...children.map(
                  (child) => Padding(
                    padding: EdgeInsets.only(top: childSpacing),
                    child: childPrefix != null
                        ? Row(
                            children: [
                              childPrefix!,
                              const SizedBox(width: 8),
                              expandChildren ? Expanded(child: child) : child,
                            ],
                          )
                        : child,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
