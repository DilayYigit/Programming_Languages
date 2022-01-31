fn main() {
    // Question 1: How are the boolean values represented?
    // Answer 1: true and false.
    let a = 5 > 2;
    println!("a: {}", a);
    let b = 1 > 6;
    println!("b: {}", b);


    // Question 2: What operators are short-circuited?
    // Answer 2: &&, || operators are exist in Rust. 
    let x = false || true; 
    println!("{}", x);
    let y = false && true; 
    println!("{}", y);

}