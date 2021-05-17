import 'quastions.dart';

class TestToptomu {
  int _surooIndex = 0;

  List<Suroo> _surooToptomu = [
    Suroo(surooTexti: '1. Титаник дүйнөдөгү эң чоң кемеби?', jooptoru: false),
    Suroo(
        surooTexti: '2. Дүйнөдөгү тооктордун саны адам санынан көп',
        jooptoru: true),
    Suroo(
        surooTexti: '3. Көпөлөктөрдүн бардык түрү бир эле күн жашайт?',
        jooptoru: false),
    Suroo(surooTexti: '4. Жер шары түз', jooptoru: false),
    Suroo(surooTexti: '5. Грек жаңгагынын мекени Арстанбап', jooptoru: true),
    Suroo(
        surooTexti: '6. Фатих Султан Мехмет өмүрүндө картошка жеген эмес',
        jooptoru: true),
    Suroo(surooTexti: '7. Баткендин борбору шаары Кызыл-Кыя', jooptoru: false),
  ];

  String getsurooTexti() {
    return _surooToptomu[_surooIndex].surooTexti;
  }

  bool getjooptor() {
    return _surooToptomu[_surooIndex].jooptoru;
  }

  void kiyinkiSuroo() {
    if (_surooIndex + 1 < _surooToptomu.length) {
      _surooIndex++;
    }
  }

  bool testButtubu() {
    if (_surooIndex + 1 >= _surooToptomu.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiJanyla() {
    _surooIndex = 0;
  }
}
