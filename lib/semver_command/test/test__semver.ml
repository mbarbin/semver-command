let%expect_test "succ" =
  let test part = print_endline (Semver.to_string (Semver.succ part (1, 2, 3))) in
  test `Major;
  [%expect {| 2.0.0 |}];
  test `Minor;
  [%expect {| 1.3.0 |}];
  test `Patch;
  [%expect {| 1.2.4 |}];
  ()
;;
