//import 'dart:io';

class Human {
  double peso, stature;

  Human({this.peso, this.stature});
}

class Person extends Human {
  String name;
  int age;
  String sex;

  //Private
  String _nameLocal;

  //Final Value
  final String nameFinal = "Jorge Final";

  //Constructor
  Person({this.name, this.age, this.sex, peso}) : super(peso: peso);

/*  {
    this.name = name;
    this.age = age;
    this.sex = sex;
  }
*/
}
