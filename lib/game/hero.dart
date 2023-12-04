import 'wizard.dart';

import 'sword.dart';//다른 파일에 접근하기 위해 임포트

class Hero {
  String name; //전사 이름
  int _hp;//전사 에너지_
  Sword? sword;

  //용사가 검을 들고 있을수도 있고 없을 수도 있다
  //final sword = Sword(name: '불꽃의 검', damage: 5);

  Hero({
    required this.name,//용사 이름
    required int hp,//용사 에너지
    this.sword//검의 정보
  }) : _hp = hp;

  void attack(){
    print('공격했습니다.');//노 리턴 공격 함수
  }

  void _die(){ //접근이 되게 만들면 안된다

    print('사망');

  }
}

void main(){
  final sword = Sword(name: '볼꽃의 검', damage: 5);

  final hero = Hero(name: '수퍼맨', hp: 100);

  final hero1 = Hero(name: '배트맨', hp: 100);

  final wizard = Wizard(name: '마법사', hp: 50);

  hero.sword = sword;


  print(hero.sword?.name);

  wizard.heal(hero1);


}
