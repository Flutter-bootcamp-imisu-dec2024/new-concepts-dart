int? number;
void main() async{
  await setNumber();
  print(number);
}

 setNumber()async {
  await Future.delayed(Duration(seconds: 3));
  number = 10;
}



