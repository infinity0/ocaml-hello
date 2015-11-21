(** HelloWorld public API *)

(** Gets the thing to show the world! *)
let get_result () = "Hello, World!\n"

(** Shows the result to the world! *)
let hello () = print_string (get_result ())
