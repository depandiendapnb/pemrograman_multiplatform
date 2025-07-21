import 'drink_ability_mixin.dart';
import 'hero.dart';

class Barbarian extends Hero with DrinkAbilityMixin {
  @override
  String drink() {
    return "Glek... Glek... Glek...!";
  }
}
