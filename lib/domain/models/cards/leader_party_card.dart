import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:rule_to_slay/constants/card_const.dart';

part 'leader_party_card.freezed.dart';
part 'leader_party_card.g.dart';

@freezed
class PartyLeaderCard with _$PartyLeaderCard {
  const factory PartyLeaderCard({
    required String id,
    required String name,
    @JsonKey(name: 'img_url') required String imgUrl,
    @JsonKey(name: 'type', fromJson: cardTypeFromJson, toJson: cardTypeToJson)
    @Default(CardType.PARTY_LEADER)
    CardType cardType,
    @JsonKey(name: 'class') required String classType,
    @JsonKey(name: 'aura') required String aura,
  }) = _LeaderPartyCard;

  factory PartyLeaderCard.fromJson(Map<String, dynamic> json) =>
      _$PartyLeaderCardFromJson(json);
}
