import 'dart:math';

void main() {
  print(solution(3,3));
}

String solution(int a, int b) {

  if(a == b){
    return 'eq';
  }
  return max<int>(a,b).toString();
}
soulution2(int a, int b) {
  if (a > b) {
    return a.toString();
  } else if (a < b) {
    return b.toString();
  }
}