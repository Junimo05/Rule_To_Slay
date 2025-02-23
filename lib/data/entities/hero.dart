class HeroEntity {
  final String id;
  final String name;
  final String imgUrl;
  final String cardType;
  final String classType;
  final String successDice;
  final String effect;
  final String verType;

  HeroEntity({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.cardType,
    required this.classType,
    required this.successDice,
    required this.effect,
    required this.verType,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'img_url': imgUrl,
      'card_type': cardType,
      'class_type': classType,
      'success_dice': successDice,
      'effect': effect,
      'ver_type': verType,
    };
  }
}
