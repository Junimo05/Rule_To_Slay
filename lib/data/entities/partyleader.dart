class PartyleaderEntity {
  final String id;
  final String name;
  final String imgUrl;
  final String cardType;
  final String classType;
  final String aura;
  final String verType;

  PartyleaderEntity({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.cardType,
    required this.classType,
    required this.aura,
    required this.verType,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'img_url': imgUrl,
      'card_type': cardType,
      'class_type': classType,
      'aura': aura,
      'ver_type': verType,
    };
  }
}
