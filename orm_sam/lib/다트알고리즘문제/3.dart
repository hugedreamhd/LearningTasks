void main(){
  final input = ['010', '2234', '2349'];
}

String solution(List<String> inputs){
  String result = '모두연';

  for(int i = 0; i <inputs.length; i++){
    result += inputs[i];
    if( i!= inputs.length -1 ){
      result += '-';
    }
  }
  return result;
}