import "dart:io";
void main() {
  // Question 1: How are the boolean values represented?
  // Answer 1: true and false.
  bool test; 
  test = 15 > 10; 
  print(test); 
  test = 1 == 2;
  print(test);


  // Question 2: What operators are short-circuited?
  // Answer 2: &&, || operators are exist in Dart. 

  var num = 3; 
  var bool1 = num<10;
  var bool2 = num>2;
  if(bool1 && bool2) {
    print("Second condition is taken.");
  }
  else 
    print("Second condition is ignored.");

// Question 5: What are the potential problems about short-circuit evaluation?
// Answer 5: In some cases, second condition has to be executed but code will not
//           consider this function call.

check() {
    print("This function has to be executed!");
    return true;
}
print(false && check());
}