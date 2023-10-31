
import 'dart:io';
import 'dart:math';
import './mammal.dart';
import './animal.dart';
import './bird.dart';
import './reptile.dart';

class Zoo{
  List<Animal> animals = [];

  void addAnimal(Animal animal) => animals.add(animal);

  void load(String fileName){
    var data = File(fileName).readAsLinesSync();
    var rnd = Random();

    for(var i=1; i < data.length; i++){
      Animal animal;
      var animalData = data[i].split(",");
      var birth = DateTime.now();
      birth = birth.subtract(Duration(days: 30 + rnd.nextInt(650)));
      
      switch(animalData[1]){
        case "mammal":
        animal = Mammal(name: animalData[0], birthDate: birth, sound: animalData[2], canFly: animalData[3] == "1", canSwim:animalData[4] == 1, canWalk: animalData[5] == "1");
        break;
        case "bird":
        animal = Bird(name: animalData[0], birthDate: birth, sound: animalData[2], canFly: animalData[3] == "1", canSwim:animalData[4] == 1, canWalk: animalData[5] == "1");
        break;
        case "reptile":
        animal = Reptile(name: animalData[0], birthDate: birth, sound: animalData[2], canFly: animalData[3] == "1", canSwim:animalData[4] == 1, canWalk: animalData[5] == "1");
        break;
        default:
        throw Exception("Invalid Animal Type: ${animalData[1]}");
      }
    }
  }
  
  void listAnimal(){
    for (var animal in animals){
      print("$animal");
    }
  }
}