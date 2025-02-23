class MagicEntity {
  MagicEntity({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.cardType,
    required this.effect,
    String? additionalRequire,
    required this.verType,
  }) : additionalRequire = additionalRequire ?? "";
  final String id;
  final String name;
  final String imgUrl;
  final String cardType;
  final String effect;
  final String? additionalRequire;
  final String verType;

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "img_url": imgUrl,
      "card_type": cardType,
      "effect": effect,
      "additional_require": additionalRequire,
      "ver_type": verType,
    };
  }
}
