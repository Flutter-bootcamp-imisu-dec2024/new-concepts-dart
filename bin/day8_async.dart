int? number;
void main() async{
  // await setNumber();
  // print(number);


  print([].runtimeType);
  print("[]".runtimeType);
  
  print({}.runtimeType);
  print("{}".runtimeType);
}

 setNumber()async {
  await Future.delayed(Duration(seconds: 3));
  number = 10;
}



