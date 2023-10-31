
import 'package:virtual_zoo/animal.dart';

class Bird extends Animal{
  Bird({
    required super.name,
    required super.birthDate,
    required super.sound,
    required super.canFly,
    required super.canSwim,
    required super.canWalk,
  }) : super(type: AnimalType.bird);

}