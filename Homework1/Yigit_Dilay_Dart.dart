import "dart:io";

void main() {
  // 1 - What types are legal for subscripts?
  // Answer 1: Array subscript type of Dart is integer,
  //           and index syntax is brackets.

  var nums = [1, 2, 3, 4];
  print(nums[0]);
  print("\n");
  print(nums[1]);
  print("\n");
  print(nums[2]);
  print("\n");


  // 2 - Are subscripting expressions in element references range checked?
  // Answer 2: Dart is checking index range in arrays.
  //           If we try to print the index that is not exist, 
  //           we will see index out of range error.

  // print(nums[-8]); ---> IndexOutOfRangeException
  // print("\n");
  // print(nums[20]); ---> IndexOutOfRangeException
  // print("\n");
  print(nums[3]);
  print("\n");


  // 3 - When are subscript ranges bound?
  // 4 - When does allocation take place?
  // Answer 3 - 4: Dart supports heap-dynamic arrays. So that, binding 
  //               array subscript and allocating storage is dynamic and
  //               done at run time, they can change during execution time. 


  // 5 - Are ragged or rectangular multidimensional arrays allowed, or both?
  // Answer 5: Both.

  List<List<int>> arr1 = [
  [1, 2, 3, 4, 5],
  [6, 7],
  [8, 9, 0],
  ];

  List<List<int>> arr2 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  ];

  for (var i = 0; i < arr1.length; i++) {
   stdout.write(arr1[i]);
   stdout.write(" ");
  }

  print("\n");

  for (var i = 0; i < arr2.length; i++) {
   stdout.write(arr2[i]);
   stdout.write(" ");
  }

  print("\n");


  // 6 - Can array objects be initialized?
  // Answer 6: Yes.

  var money = [100, 200, 5000, 35, 42]; // dynamic-size

  var vowels = new List.filled(5, '', growable: false); // fixed-size
  vowels[0] = 'a';
  vowels[1] = 'e';
  vowels[2] = 'i';
  vowels[3] = 'o';
  vowels[4] = 'u';

  for (var i = 0; i < money.length; i++) {
   stdout.write(money[i]);
   stdout.write(" ");
  }

  print("\n");

  for (var i = 0; i < vowels.length; i++) {
   stdout.write(vowels[i]);
   stdout.write(" ");
  }

  print("\n");

  // 7. Are any kind of slices supported?
  // Answer 7: Dart supports sublist.

  var emotes = ["Kappa", "KEKW", "OmegaLUL", "PogChamp"];
  print(emotes.sublist(1, 3));

  // 8 - Which operators are provided?
  // Answer 8: + and == operators.
  var nums1 = [1, 2, 3, 4, 5];
  var nums2 = [6, 7, 8, 9];
  var result = nums1 + nums2;
  
  for (var i = 0; i < result.length; i++) {
   stdout.write(result[i]);
   stdout.write(" ");
  }
  print("\n");

  print(nums1 == nums2);
}