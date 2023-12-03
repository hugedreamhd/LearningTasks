import "dart:math";

import "package:lecture_1130/game/hero.dart";

// 1장의 연습문제에서 작성한 Cleric클래스에 관하여, 2가지 수정을 행하시오.
// 현시점의 Cleric 클래스의 정의에는, 각 인스턴스별로 최대 HP와 최대 MP 필드에 정보를 가지고 있습니다.
// 하지만, 모든 성직자의 최대 HP 는 50, 최대 MP 는 10으로 정해져 있어, 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
// 그래서, 최대 HP, 최대 MP의 필드가 각 인스턴스별로 있지 않도록, 필드 선언에 적절한 키워드를 추가 하던지 말던지 자유.
//int ClericMaxHP = 50;

class Cleric {
  String name;
  static int maxHP = 50;
  static int maxMP = 10;
  int mp;
  int hp;
  int sec = 0;

  Cleric({
    required this.name,
    this.hp = 0,
    this.mp = 0,
  });

  void selfAid() {
    // if(mp < 5){
    //   return;
    // }

    if (mp >= 5) {
      //mp가 5랑 같거나 클때만 실행
      mp -= 5; //mp량이 5 마이너스됨
      hp = maxHP; //hp량은 최대량이 됨
      print('$name은 selfAid 마법을 사용했다');
    } else {
      print('$name은 마나가 부족했다');
    }
  }

  int pray(int sec) {
    int realPlusNumber = 0;

    int randomPlusNumber = Random().nextInt(3) + sec;

    if (mp + randomPlusNumber > maxMP) {
      realPlusNumber = mp + randomPlusNumber - maxMP;
      print('$realPlusNumber 만큼 회복');
      //return realPlusNumber;
    } else {
      print('$realPlusNumber 만큼 회복했다!');
      //return realPlusNumber;
    }
    return realPlusNumber;
  }
}


void main() {
  int plusNumber = 0;

  Cleric cleric = Cleric(name: '성직자1', hp: 5, mp: 5);
  print('HP : ${cleric.hp}, MP : ${cleric.mp}');

  Cleric cleric1 = Cleric(name: '성직자2', hp: 5, mp: 5);
  print(Cleric.maxMP); //static으로 이미 클래스 안에서 인스턴스로 올라가있고
  //클래릭을 통해서 다른 메모리 주소로 접근이 가능하게 만들어 준 것
  //그런데 $이름을 통해서 여러 문장으로 사용할때 어떻게 써야하지?

  cleric.selfAid();
  print('hp:${cleric.hp} mp:${cleric.mp}');

  plusNumber = cleric.pray(5);
  print('기도해서 ${cleric.hp}가 ${plusNumber} 만큼 회복');

  // 2. 아래의 방침에 따라, 생성자를 추가 하시오(네임드파라미터를 활용?)
  // 이 클래스는 Cleric(“아서스", hp: 40, mp: 5) 와 같이, 이름, HP, MP 를 지정하여 인스턴스화 할 수 있다

  Cleric cleric2 = Cleric(name: '아서스', hp: 40, mp: 5);
  print('클레릭 : ${cleric.name}, HP: ${cleric.hp}, MP: ${cleric.mp}의 등장');

  // 이 클래스는 Cleric(“아서스", hp: 35) 와 같이, 이름과 HP만으로 지정하여 인스턴스화 할 수 있다.
  // 이 때, MP는 최대 MP와 같은 값이 초기화 된다(네임드파라미터 내에 static으로 접근?)

  Cleric cleric3 = Cleric(name: '아서스', hp: 35);
  print('클레릭 : ${cleric3.name}, HP: ${cleric3.hp}, MP: ${Cleric.maxMP}의 등장');

  // 이 클래스는 Cleric(“아서스") 와 같이 이름만을 지정하여 인스턴스화 할 수 있다.
  // 이 때, HP 와 MP 는 최대 HP와 최대 MP로 초기화 된다
  Cleric cleric4 = Cleric(name: '아서스');
  print('클레릭 : ${cleric4.name}, HP: ${Cleric.maxHP}, MP: ${Cleric.maxMP}의 등장');

  // 이 클래스는 Cleric() 과 같이 이름을 지정하지 않는 경우에는 인스턴스화 할 수 없다고 한다.
  // (이름이 없는 성직자는 존재 할 수 없음)
  // 생성자는 가능한 한 중복되는 코드가 없도록 작성한다

}
