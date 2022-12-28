class Car{
  String name;
  int yearOfProduct;
//  this is constructor
//  constructor with named arguments
  Car(  this.name,
      this.yearOfProduct);
  @override
  String toString() =>'Car($name,$yearOfProduct)';
  // _doSomething is a private
  void doSomething(){
    print("I am doing something...");
  }
//  method with named arguments ?
void sayhello(String personName ){
    print("hello $personName");
    // _doSomething(); //you can access "private" property inside
}
// Function handleEvent(String handle){
//   return (String x) => handle;
// }
}
