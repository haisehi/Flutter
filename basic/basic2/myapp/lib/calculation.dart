String string1= "Hello Flutter , how are you ?\n";
var string2 = "I\'m fine";
var string = string1 + string2;
int x = 10;
int y = x*2;
//how to use the array?
List<int> numbers =[1,2,3,4,5];
//how to use 'map' in the array?
List<String> stringNumber = numbers.map((number){
  return 'valuer = $number';
}).toList();