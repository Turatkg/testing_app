import 'package:flutter/cupertino.dart';

class Suroo {
  String surooTexti;
  bool jooptoru;

  Suroo({@required this.surooTexti, @required this.jooptoru});
}

List<Suroo> surooToptomu = [
  Suroo(surooTexti: '1. Титаник дүйнөдөгү эң чоң кемеби?', jooptoru: false),
  Suroo(
      surooTexti: '2. Дүйнөдөгү тооктордун саны адам санынан көп',
      jooptoru: true),
  Suroo(
      surooTexti: '3. Көпөлөктөрдүн бардык бир эле күн жашайт?',
      jooptoru: false),
  Suroo(surooTexti: '4. Жер шары түз', jooptoru: false),
  Suroo(surooTexti: '5. Грек жаңгагынын мекени Арстанбап', jooptoru: true),
  Suroo(
      surooTexti: '6. Фатих Султан Мехмет өмүрүндө картошка жеген эмес',
      jooptoru: true),
  Suroo(surooTexti: '7. Баткендин борбору шаары Кызыл-Кыя', jooptoru: false),
];
