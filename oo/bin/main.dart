//import 'package:oo/oo.dart' as oo;
import 'dart:io';
import 'src/person.dart';

main() {
  Person person = Person(name: "Jorge", age: 22, sex: "M");

  print(person.name);

  //Utilize Heritage
  print(person.peso);

  Person person2 = Person();

  person2.peso = double.parse(stdin.readLineSync());
  print(person2.peso);
}
