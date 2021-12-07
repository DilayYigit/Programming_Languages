<?php
    // 1 - What types are legal for subscripts?
    // Answer 1: Array subscript type of PHP can be integer, string
    //           and index syntax is brackets.

    $books = array("lotr1", "lotr2", "lotr3");

    echo $books[0];
    echo "\n";
    echo $books[1];
    echo "\n";
    echo $books[2];
    echo "\n";

    $stringSubscipt = array(
    'Turkey' => 'Ankara',
    'England' => 'London',
    'Italy' => 'Rome',
    'France' => 'Paris'
    );

    foreach ($stringSubscipt as $elem) {
        echo $elem, ' ';
    }
    echo "\n";


    // 2 - Are subscripting expressions in element references range checked?
    // Answer 2: PHP is checking index range in arrays. However it does not 
    //           print an error message. It does not support negative index. 
    //           Also, if we try to print the index that is not exist, 
    //           we will see undefined.

    echo $friends[-1]; //---> undefined
    echo "\n";
    echo $friends[23]; //---> undefined
    echo "\n";


    // 3 - When are subscript ranges bound?
    // 4 - When does allocation take place?
    // Answer 3 - 4: PHP supports heap-dynamic arrays. So that, binding 
    //               array subscript and allocating storage is dynamic and
    //               done at run time, they can change during execution time. 


    // 5 - Are ragged or rectangular multidimensional arrays allowed, or both?
    // Answer 5: Both.
    $menu = array(
             array("water", "soda", "lemonade"),
             array("pancake", "sufle"),
             array("salad")
    );

    $nums = array(
             array(10, 20),
             array(30, 40),
    );

    // 6 - Can array objects be initialized?
    // Answer 6: Yes.
    $lectures = ["CS315", "CS202", "CS224"];
    echo $lectures[0];
    echo "\n";

    // 7. Are any kind of slices supported?
    // Answer 7: PHP supports slices.
    $vowel = array("a","e","i","o","u");
    print_r(array_slice($vowel,0,5));

    // 8 - Which operators are provided?
    // Answer 8: + and == operators.
    $first1 = array('firstNum' => 23);
    $second1 = array('secondNum' => 9);
    $result = $first1 + $second1;
    
    foreach ($result as $elem) {
        echo $elem, ' ';
    }
    echo "\n";
    
    $first2 = array("key" => 23);
    $second2 = array("key" => 9);
    var_dump($first2 == $second2);
?>