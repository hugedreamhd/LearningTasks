//다음 정보를 저장하기 좋은 컬렉션을 List, Set, Map 중 고르시오

//대한민국의 도시 이름 모음 (순서 상관 없음) - set 순서 상관없고 수 많은 도시를 이름으로 중복되는 경우
//                                       가 없을 것 같다. 예)경상북도 김천시
//10명 학생의 시험 점수 - Map 학생이름은 key값 그에 따른 점수는 value값으로 연결지어야 하기에
//
//대한민국의 도시별 인구수 (순서 상관 없음)음  - 도시별 인구수 같이 많은 데이터는 속도가 중요하고
//                                        중복값을 방지하게 위해 set을 사용해야 한다 생각함

void main(){
  final person = Person(name: '한석봉');
  final person1 = Person(name: '홍길동');

  List<String> people = [];
  people.add('한석봉');
  people.add('홍길동');

  print(people.first);
  print(people.last);
}

class Person{
  String name;

  Person({required this.name});

}