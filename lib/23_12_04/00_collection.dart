void main(){

  final List<int> numbers = [];

  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  numbers.add(4);
  numbers.insert(0,5);

  //근본없는 패턴/ 안티패턴
  final List numbers2 = [];
  numbers2.add(1);
  numbers2.add('1');
  numbers2.add(true);
  numbers2.add(null);

  //근본없는 패턴/ 안티패턴
  final List numbers3 = [];

  //올바른 방법
  final numbers4 = <int>[];

  //절대악!!!!!!!!
  dynamic a = 'ddd';
  print(a + 20);




  print(numbers2);

  int num = 10;
  double ff = 10.0;
  List<int> nums = [1,2,3,4];
 //무지성
  for (var num in nums){
    print(nums);//처음부터 끝까지 돌때 인덱스 필요없을 때
  }

  for(int i = 0; i < nums.length; i++){
    final num = nums[i];
    print('num: $i번');//i를 활용해서 뭔가를 해야할때 인덱스 필요할 때
  }

  //다트 특징 : 1급 개체(first_class_object) 함수가 다른 함수의 인자로 들어갈 수 있는것
  // 왜 노란불? 함수형 프로그래밍(특정함수 안에 함수가 들어감)
  //익명함수 - 이름이 없는 함수
  //조건문 사용 금지 - 중간에 중지가 안됨(리턴이라던가)
  //forEach 안에 함수를 인자로 받으면 조건문을 사용할지 인자로 받은 조건문을 리턴한다
  nums.forEach((int num) {
    print('$num');
  });

  nums.forEach(print);//타입이 맞으면 이렇게도 쓸수 있다 input과 output만 맞으면

  List<int> numbers10 = [1,1,1];
  print(numbers10);

  Set<int> lottoSet = {};//검색이 중요해? set으로 추천, 특정위치(인덱스) 활용은 안됨
  lottoSet.add(1);
  lottoSet.add(1);
  lottoSet.add(1);

  print(lottoSet);

  for(var value in lottoSet){
    print(value);//순서 보장 안됨
  }
  Map<String, dynamic> gildong = {//Object로 dynamic 대신하면 타입체크는 가능..?
    'name': '홍길동',
    'id': 0,
    'age': 20,
  };

  print(gildong['name']);
  print(gildong['id']);
  print(gildong['age']);

  gildong['name'] = '한석봉';

  bool id = gildong['id'];
  print(id);
}

class Person{
  String name;
  Person(this.name);
  something(a, name){
    return 'hello' + a;
  }
}