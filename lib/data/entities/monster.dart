class MonsterEntity {
  final String id;
  final String name;
  final String imgUrl;
  final String cardType;
  //slay conditions
  final int heroReq;
  final int guardianReq;
  final int thiefReq;
  final int wizardReq;
  final int fighterReq;
  final int bardReq;
  final int rangerReq;
  final String additionalReq;
  final String specialSlayMechanism;
  //slay results
  final String successSlayReq;
  final String successSlayBonus;
  final String failureSlayReq;
  final String failureSlayPenalty;
  final String rewardEffect;
  final String verType;

  MonsterEntity({
    required this.id,
    required this.name,
    required this.imgUrl,
    required this.cardType,
    int? heroReq,
    int? guardianReq,
    int? thiefReq,
    int? wizardReq,
    int? fighterReq,
    int? bardReq,
    int? rangerReq,
    String? additionalReq,
    String? specialSlayMechanism,
    required this.successSlayReq,
    String? successSlayBonus,
    required this.failureSlayReq,
    required this.failureSlayPenalty,
    required this.rewardEffect,
    required this.verType,
  })  : heroReq = heroReq ?? 0,
        guardianReq = guardianReq ?? 0,
        thiefReq = thiefReq ?? 0,
        wizardReq = wizardReq ?? 0,
        fighterReq = fighterReq ?? 0,
        bardReq = bardReq ?? 0,
        rangerReq = rangerReq ?? 0,
        additionalReq = additionalReq ?? '',
        specialSlayMechanism = specialSlayMechanism ?? '',
        successSlayBonus = successSlayBonus ?? '';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'img_url': imgUrl,
      'card_type': cardType,
      'hero_req': heroReq,
      'guardian_req': guardianReq,
      'thief_req': thiefReq,
      'wizard_req': wizardReq,
      'fighter_req': fighterReq,
      'bard_req': bardReq,
      'ranger_req': rangerReq,
      'additional_req': additionalReq,
      'special_slay_mechanism': specialSlayMechanism,
      'success_slay_req': successSlayReq,
      'success_slay_bonus': successSlayBonus,
      'failure_slay_req': failureSlayReq,
      'failure_slay_penalty': failureSlayPenalty,
      'reward_effect': rewardEffect,
      'ver_type': verType,
    };
  }
}
