val sum_test_1 = sum ([1,2,3,45]) = 1+2+3+45;
val sum_test_2 = sum ([42,2,3,45]) = 42+2+3+45;

val product_test_1 = product ([1,2,3,45]) = 1*2*3*45;
val product_test_2 = product ([42,2,3,45]) = 42*2*3*45;

val concat_test_1 = concat ([[1,2,3], [4,5,7]]) = [1,2,3] @ [4,5,7];
val concat_test_2 = concat ([[42,2,3,45], [2,2,2,2], [1,2,3,4,5]]) = [42,2,3,45] @ [2,2,2,2] @ [1,2,3,4,5];

val maximum_test_1 = maximum ([1,2,3,45]) = SOME 45;
val maximum_test_1 = maximum ([~1,~2,3,~45]) = SOME 3;
val maximum_test_2 = maximum ([]) = NONE;

val minimum_test_1 = minimum ([1,2,3,45]) = SOME 1;
val minimum_test_1 = minimum ([~1,~2,3,~45]) = SOME ~45;
val minimum_test_2 = minimum ([]) = NONE;

val reverse_test_1 = reverse ([1,2,3,45]) = rev [1,2,3,45];
val reverse_test_2 = reverse ([42,2,3,45]) = rev [42,2,3,45];
val reverse_test_2 = reverse ([42]) = rev [42];
