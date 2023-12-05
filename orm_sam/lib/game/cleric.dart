import "dart:math";

class Cleric {
  String name = 'Cleric';
  final int maxHp = 50;
  final int maxMp = 10;
  int mp;
  int hp;
  int sec = 0;

  Cleric(this.hp, this.mp);

  void selfAid() {
    // if(mp < 5){
    //   return;
    // }

      if (mp >= 5) {
      //mp가 5랑 같거나 클때만 실행
      mp -= 5; //mp량이 5 마이너스됨
      hp = maxHp; //hp량은 최대량이 됨
      print('$name은 selfAid 마법을 사용했다');
    } else {
      print('$name은 마나가 부족했다');
    }
  }

  int pray(int sec) {
    int realPlusNumber = 0;

    int randomPlusNumber = Random().nextInt(3) + sec;

    if (mp + randomPlusNumber > maxMp) {
      realPlusNumber = mp + randomPlusNumber - maxMp;
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

  Cleric cleric = Cleric(5, 5);
  print('hp:${cleric.hp} mp:${cleric.mp}');

  cleric.selfAid();
  print('hp:${cleric.hp} mp:${cleric.mp}');

  plusNumber = cleric.pray(5);
  print('기도해서 ${cleric.hp}가 ${plusNumber} 만큼 회복');
}
