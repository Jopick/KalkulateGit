double adaptetFlexSize(String args){
  if(args.length < 15){
    return 50.0;
  }
  else if(args.length < 17){
    return 40.0;
  }
  else if(args.length < 22){
    return 35.0;
  }
  else if(args.length < 26){
    return 30.0;
  }
  else {
    return 25.0;
  }
}