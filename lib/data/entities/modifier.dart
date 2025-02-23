class ModifierEntity {
  ModifierEntity({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.cardType,
    String? plus,
    String? minus,
    String? additionalInfo,
    required this.verType,
  })  : plus = plus ?? '',
        minus = minus ?? '',
        additionalInfo = additionalInfo ?? '';

  final String id;
  final String name;
  final String imgUrl;
  final String cardType;
  final String? plus;
  final String? minus;
  final String? additionalInfo;
  final String verType;
}
