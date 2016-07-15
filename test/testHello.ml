open OUnit2
open Hello

let suite = [
  "tc_get_output" >:: (fun ctx ->
      assert_equal "Hello, World!\n" (get_result())
    );
]
