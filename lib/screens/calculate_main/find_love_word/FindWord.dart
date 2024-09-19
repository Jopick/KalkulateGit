bool findWord(String args){
  bool answer = false;
  for(int i = 0; i< args.length - 3; i++){
    if(args[i] == 'l' && args[i + 1] == 'o' && args[i + 2] == 'v' && args[i + 3] == 'e'){
      answer = true;
      break;
    }
  }
  return answer;
}