use "hw_basic_list.sml";

val empty_test_1 = empty [1,2,3,45] = false;
val empty_test_2 = empty [42,2,3,45] = false;
val empty_test_3 = empty [] = true;

val head_test_1 = head [1,2,3,45] = hd [1,2,3,45];
val head_test_2 = head [42,2,3,45] = hd [42,2,3,45];
val head_test_3 = (head []; false) handle List.Empty => true;

val last_test_1 = last [1,2,3,45] = List.last [1,2,3,45];
val last_test_2 = last [42,2,3,45] = List.last [42,2,3,45];
val last_test_3 = (last []; false) handle List.Empty => true;

val tail_test_1 = tail [1,2,3,45] = tl [1,2,3,45];
val tail_test_2 = tail [42,2,3,45] = tl [42,2,3,45];
val tail_test_3 = (tail []; false) handle List.Empty => true;

val init_test_1 = init [1,2,3,45] = [1,2,3];
val init_test_2 = init [42,2,3,45] = [42,2,3];
val init_test_3 = (init []; false) handle List.Empty => true;

val nth_test_1 = nth ([1,2,3,45], 1) = 2;
val nth_test_2 = nth ([1,2,3,42], 3) = 42;
val nth_test_3 = (nth ([1,2,3,45], 8); false) handle Subscript => true;
val nth_test_3 = (nth ([1,2,3,45], ~1); false) handle Subscript => true;

val take_test_1 = take ([1,2,3,45], 2) = [1,2];
val take_test_2 = take ([42,2,3,45], 3) = [42,2,3];
val take_test_3 = (take ([1,2,3], ~4); false) handle Subscript => true;

val drop_test_1 = drop ([1,2,3,45], 2) = [3,45];
val drop_test_2 = drop ([42,2,3,45], 3) = [45];
val drop_test_3 = (drop ([1,2,3], ~4); false) handle Subscript => true;

val replicate_test_1 = replicate (5, 5) = [5,5,5,5,5];
val replicate_test_2 = replicate (2, 4) = [2,2,2,2];
