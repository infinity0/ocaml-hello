open OUnit2
open Hello

let tc_get_output ctx = assert_equal "Hello, World!\n" (get_result())

(** TODO: OUnit2 should detect test cases automatically. *)
let suite = "ts_hello" >::: [
	"tc_get_output" >:: tc_get_output
]
