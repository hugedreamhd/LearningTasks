class Sword {
  String name;//검의 이름이 있고
  int damage;//데미지를 숫자 표현한다

  Sword({
    required this.name,//메인 함수에 검의 이름과
    required this.damage,//데미지를 표현하기 위해서
  });

  void main() {
    final sword = Sword(
      name: '불의검',
      damage: 10,
    );
  }
}
