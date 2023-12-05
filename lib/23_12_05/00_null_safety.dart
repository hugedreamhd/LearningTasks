import '../game/hero.dart';

class SuperHero extends Hero{
  bool _isFlying = false;

  bool get isFlying => _isFlying;

  set isFlying(bool value){

    if(value){
      print('$name 이 날개를 펼쳤다');
    }else{
      print('$name 이 날개를 접었다');
    }
  }

  SuperHero({required super.name, required super.hp});

  // Annotation 에너테이션
@override
  void run(){
  print('발이 땀이 나도록 뛰었다.');
}

@override
  void attack
}
void main(){
  final hero = Hero(name: '홍길동', hp: 50);
  hero.run();

  final superHero = SuperHero(name: '수퍼맨', hp: 100);
  SuperHero.run();
}



