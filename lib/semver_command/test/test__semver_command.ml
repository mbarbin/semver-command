let%expect_test "hello" =
  print_s Semver_command.hello_world;
  [%expect {| "Hello, World!" |}]
;;
