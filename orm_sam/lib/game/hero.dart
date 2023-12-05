import 'slime.dart';

class Hero {
  String name; //전사 이름
  int hp; //전사 에너지_

  Hero({required this.name, required this.hp});

  void attack(Slime slime) {
    print('$name이 $slime을 공격했습니다.'); //노 리턴 공격 함수
    slime.hp -= 10;
  }

  void run() {
    print('$name이 도망쳤다');
  }

  void _die() {
    //접근이 되게 만들면 안된다

    print('사망');
  }

  void sit() {
    print('앉는다');
  }

  void slip() {
    print('미끄러졌다');
  }

  void sleeping() {
    print('$name은 잠을잔다');
  }
}

class SuperHero extends Hero {
  SuperHero({required super.name, required super.hp});


  bool _isFlying = false; // 날고 있는가

  bool get isFlying => _isFlying;

  set isFlying(bool value) {
    _isFlying = value;
    if (value) {
      print('$name 이 날개를 펼쳤다.');
    } else {
      print('$name이 날개를 접었다.');
    }
  }
  @override
  void attack(Slime slime){
    print('$name이 $slime을 공격했다');
    slime.hp -= 10;
    //super.attack(slime); 부모 객체를 참조해서 공격을 실행 할 때
    if(isFlying){
      print(';$name이 $slime을 공격했다.');
      slime.hp -= 5;
      print('5포인트의 추가 피해를 입혔다.');
    }
  }
  @override
  void run(){
    print('$name이 퇴각했다');
  }
}

void main(List<String> arguments){
  final hero = SuperHero(name: '홍길동', hp: 100);
  hero.run();

  final hero1 = Hero(name: '홍길동', hp:100);
  hero.run();

  final superHero = SuperHero(name: '한석봉', hp: 50);
  superHero.run();
}
//
// class SuperHHero extends Hero{
//   bool _isFlying = false;
//
//   SuperHHero({required super.name, required super.hp}); //
//
//   @override
//   void attack(Slime slime) {
//     super.attack(slime);
//   }
// }