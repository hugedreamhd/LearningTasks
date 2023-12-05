import 'hero.dart';

class Slime{
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero){
    print('슬라임 $suffix이/가 공격했다');
    print('10의 데미지');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {

  PoisonSlime poisonSlime = PoisonSlime('A');
  double decreaseHp;
  String name;
  int d = 5;

  PoisonSlime(super.suffix, this.name, this.decreaseHp, this.d);

  void posionSlimeAttack(Hero hero) {
    print('$name이 공격을 했다.');
    hero.hp -= 8;

    if (d > 1) {
      print('$name이 추가로 독 포자를 살포했다');
      poisonSlime.d -= 1;
      decreaseHp = hero.hp % 1 / 5;
      print('$decreaseHp 포인트의 데미지');
    } else {
      print('$name이 독 공격을 실패했다.');
    }
  }
}

void main(){
  final hero = Hero(name: 'sam', hp: 100);


}