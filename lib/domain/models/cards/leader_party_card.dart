import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rule_to_slay/constants/card_const.dart';
import 'package:rule_to_slay/data/entities/partyleader.dart';

part 'leader_party_card.freezed.dart';
part 'leader_party_card.g.dart';

@freezed
class PartyLeaderCard with _$PartyLeaderCard {
  const PartyLeaderCard._();

  const factory PartyLeaderCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.PARTY_LEADER)
    CardType cardType,
    @JsonKey(name: 'class') required String classType,
    @JsonKey(name: 'aura') required String aura,
    @JsonKey(name: 'ver_type') required String verType,
  }) = _LeaderPartyCard;

  PartyleaderEntity toEntity() => PartyleaderEntity(
        id: id,
        name: name,
        imgUrl: imgUrl,
        cardType: cardTypeToJson(cardType),
        classType: classType,
        aura: aura,
        verType: verType,
      );

  factory PartyLeaderCard.fromJson(Map<String, dynamic> json) =>
      _$PartyLeaderCardFromJson(json);
}
