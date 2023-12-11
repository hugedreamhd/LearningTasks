// 다음 조건을 만족하는 금고인 StrongBox 클래스를 정의하시오.
// 금고 클래스에 담는 인스턴스의 타입은 미정
// 금고에는 1개의 인스턴스를 담을 수 있음
// put() 메서드로 인스턴스를 저장하고 get() 메서드로 인스턴스를 얻을 있음
//get() 으로 얻을 때는 별도의 타입 캐스팅을 사용하지 않아도 됨

//연습문제 1에서 작성한 StrongBox 클래스에 열쇠의 종류를 나타내는 열거형 KeyType을 정의하고,
//다음 내용을 반영하여 StrongBox 클래스를 수정하시오.
//
//열쇠의 종류를 나타내는 필드 변수
//열쇠의 종류를 받는 생성자
//
//단, 열쇠의 종류는 다음 4종류로 한정한다. 각 열쇠는 사용횟수의 한도가 정해져 있다.
//padlock    (1,024회)
//button      (10,000회)
//dial             (30,000회)
//finger       (1,000,000회)
//
//금고에서 get() 메서드를 호출할 때 마다 사용횟수를 카운트하고 각 열쇠의 사용횟수에 도달하기 전에는 null을 리턴한다.

class StrongBox<E> {
  Keytype keytype;
  E? _data;
  int result = 1;

  StrongBox({required this.keytype});

  void put(E data) {
    _data = data;
  }

  E? get() {
    switch (keytype) {
      case Keytype.button:
        if (result < 3) {
          result++;
          return null;
        }

      case Keytype.padlock:
        if (result < 10000) {
          result++;
          return null;
        }

      case Keytype.dial:
        if (result < 30000) {
          result++;
          return null;
        }

      case Keytype.finger:
        if (result < 1000000) {
          result++;
          return null;
        }
    }

    return _data;
  }
}

enum Keytype { padlock, button, dial, finger }

void main() {
  StrongBox strongBox = StrongBox(keytype: Keytype.button);
  strongBox.put(10000);
  print(strongBox.get());
  print(strongBox.get());
  print(strongBox.get());
  
}
