import 'package:flutter/material.dart';

class StepContainer extends StatelessWidget {
  final int stepNumber;
  final String title;
  final Widget content;

  const StepContainer({
    super.key,
    required this.stepNumber,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[900]?.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blueGrey[700]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
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
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[100],
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
  final IconData icon;
  final String text;
  final List<String>? subTexts;
  final IconData? subTextIcon;

  const BuildInstructionItem({
    super.key,
    required this.icon,
    required this.text,
    this.subTexts,
    this.subTextIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.blue[300]),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (subTexts != null)
                  ...subTexts!.map((text) => Padding(
                      padding: const EdgeInsets.only(top: 4, left: 8),
                      child: Row(
                        children: [
                          Icon(subTextIcon ?? Icons.arrow_right,
                              size: 16, color: Colors.blue[300]),
                          Text(
                            text,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
