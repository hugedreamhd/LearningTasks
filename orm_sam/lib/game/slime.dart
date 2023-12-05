import 'hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  double decreaseHp;
  int d;

  PoisonSlime(super.suffix, this.decreaseHp, this.d);


  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (d > 0) {
      print('$suffix이/가 추가로 독 포자를 살포했다');
      d -= 1;
      decreaseHp = hero.hp % (1 / 5);
      hero.hp -= decreaseHp.toInt(); //나누기를 실행했을때 double형이 반환될 수 있어서!!
      print('$decreaseHp 포인트의 데미지');
    } else {
      print('$suffix이/가 독 공격을 실패했다.');
    }
  }
}

void main() {
  PoisonSlime poisonSlime = PoisonSlime('아방', 10, 0);


  print('${poisonSlime.suffix}이/가 공격했다. ${poisonSlime.decreaseHp}만큼 '
      ' 데미지');

}
