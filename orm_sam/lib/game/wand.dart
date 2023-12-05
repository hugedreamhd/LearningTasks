class Wand {
  String _name;
  double _power;

  Wand({
    required String name,
    required double power,
  }) : _name = name,
       _power = power;

  String get name => _name;
  double get power => _power;

  set name(String n) {
    if (n.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = n;
  }
  set m(double p) {
    if (0.5 >= p && p <= 100) {
      throw Exception('마력은 허용치 초과!');
    }
    _power = p;
  }
}
