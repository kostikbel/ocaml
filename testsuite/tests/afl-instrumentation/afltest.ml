(* TEST (* Just a test-driver *)
   * skip
     reason = "See https://github.com/ocaml/ocaml/issues/10864"
*)

(* The previous test, to be reinstated later *)
(*
   * native-compiler
   ** script
       script = "sh ${test_source_directory}/has-afl-showmap.sh"
       readonly_files = "harness.ml test.ml"
   *** setup-ocamlopt.byte-build-env
   **** ocamlopt.byte
         module = "test.ml"
         flags = "-afl-instrument"
   ***** ocamlopt.byte
          module = ""
          program = "${test_build_directory}/test"
          flags = "-afl-inst-ratio 0"
          all_modules = "test.cmx harness.ml"
   ****** run
*)
