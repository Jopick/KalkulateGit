/*
import 'dart:ffi';
*/
double Answer(String answer){
  String firstNomber = '';
  String secondNomber = ' ';
  String sign = ' ';
  int counter = 0;

  for(int i = 0; i < answer.length; i++){

    if(answer[i] == ' '){
      counter += 1;
    }
    else if(counter == 0){
      firstNomber += answer[i];
    }
    else if(counter == 1){
      sign = answer[i];
    }
    else if(counter == 2){
      secondNomber += answer[i];
    }
  }
  double equation = 0;

  switch(sign){
    case '+':
      equation = double.parse(firstNomber) + double.parse(secondNomber);
      break;
    case '-':
      equation = double.parse(firstNomber) - double.parse(secondNomber);
      break;
    case '*':
      equation = double.parse(firstNomber) * double.parse(secondNomber);
      break;
    default:
      equation = double.parse(firstNomber) / double.parse(secondNomber);
      break;


  }


  //return equation.toString();
  return equation;
}