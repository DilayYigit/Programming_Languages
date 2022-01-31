<?php
// Question 1: How are the boolean values represented?
// Answer 1: true and false.
var_dump(false);
var_dump(true); 
var_dump((bool) 1);
var_dump((bool) 0);


// Question 2: What operators are short-circuited?
// Answer 2: and, or, &&, || operators are exist in PHP. 

function sayHi() {
    echo "Dilay is here!";
    return true;
}
function sayGoodbye() {
	echo "Dilay is not here!";
    return false;
}

if (false && sayHi()){
    echo "Test &&: Second statement is evaluated.";
}
if (false || sayHi()) {
    echo "Test ||: Second statement is evaluated.";
}
if (false and sayGoodbye()) {
    echo "Test and: Second statement is evaluated.";
}
if (false or sayGoodbye()) {
    echo "Test or: Second statement is evaluated.";
}
echo "Second condition does not evaluated.";

// Question 5: What are the potential problems about short-circuit evaluation?
// Answer 5: In some cases, second condition has to be executed but code will not
//           consider this function call.

function check() {
    echo "This function has to be executed!";
    return true;
}
print(1 || check());
?>