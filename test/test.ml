open OUnit2

(** TODO: OUnit2 should detect test suites automatically. *)
let () = run_test_tt_main (TestHello.suite)
