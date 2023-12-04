import 'hero.dart';
import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand? wand;

  String get name => _name;
  int get mp => _mp;
  int get hp => _hp;
  Wizard({
    required String name,
    required int hp,
    required int mp,
    this.wand,
  }) : _name = name, _mp = mp, _hp = hp;

  set w(Wand wand) {
    if (wand != null) {
      throw Exception('완드를 들고 있지 않아요');
    }
  }

  set mp(int m) {
    if (mp < 0) {
      throw Exception('마력은 0 이하는 허용 안됨!!');
    }
    _mp = mp;
  }
  set hp(int h){
    int initHp = 0;

    if(hp < 0){
      _hp = initHp;
    }
    _hp = h;
  }

  set name(String n) {
    if (n.length < 3) {
      throw Exception('이름이 너무 짧습니다.');
    }
    _name = n;
  }



  void heal(Hero hero) {
    hero.hp += 10;
    print('${hero.name}의 hp를 10 회복');
  }
}
