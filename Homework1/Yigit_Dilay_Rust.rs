fn main() {
    // 1 - What types are legal for subscripts?
    // Answer 1: Array subscript type of Rust is integer,
    //           and index syntax is brackets.
    let array: [i32; 5] = [1, 2, 3, 4, 5];
    println!("1. element of the array: {}", array[0]);
    println!("2. element of the array: {}", array[1]);
    println!("3. element of the array: {}", array[2]);
    println!("4. element of the array: {}", array[3]);



    // 2 - Are subscripting expressions in element references range checked?
    // Answer 2: Rust is checking index range in arrays.
    //           If we try to print the index that is not exist, 
    //           we will see index out of range error.

    // println!("{:?}", array[10]); ---> index out of range
    // println!("{:?}", array[-10]); ---> index out of range
    println!("{:?}", array[4]); 
    println!("{:?}", array.len()); 

    // 3 - When are subscript ranges bound?
    // 4 - When does allocation take place?
    // Answer 3 - 4: Rust supports stack-allocated arrays. So that, binding 
    //               array subscript is static. The storage allocation
    //               is done at compile time. 


    // 5 - Are ragged or rectangular multidimensional arrays allowed, or both?
    // Answer 5: Both.

    let mut raggedArray = [[0u8; 2]; 2];
    raggedArray[0][0] = 5;
    raggedArray[0][1] = 10;
    raggedArray[1][0] = 15;
    raggedArray[1][1] = 20;

    let mut multiArray = [[0u8; 2]; 3] = [[1,2],[4,5],[6,7]];

    // 6 - Can array objects be initialized?
    // Answer 6: Yes.

    let arrExample: [i32; 3] = [1, 2, 3];

    // 7. Are any kind of slices supported?
    // Answer 7: Rust supports slices.
    let array_vol2: [i32; 5] = [1, 2, 3, 4, 5];
    //println!("{:?}", array_vol2.slices(2, 2)); 

    // 8 - Which operators are provided?
    // Answer 8: [] and []= operators.
    let nums1: [i32; 5] = [1, 2, 3, 4, 5];