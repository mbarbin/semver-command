let semver_anon =
  let%map_open.Command str = anon ("semver" %: string) in
  match Semver.of_string str with
  | Some t -> Ok t
  | None -> Or_error.error_s [%sexp "Invalid semver", (str : string)]
;;

let compare_cmd =
  Command.basic_or_error
    ~summary:"compare two semver strings"
    (let%map_open.Command semver1 = semver_anon
     and semver2 = semver_anon in
     fun () ->
       let open Or_error.Let_syntax in
       let%bind semver1 = semver1 in
       let%bind semver2 = semver2 in
       let ordering = Ordering.of_int (Semver.compare semver1 semver2) in
       print_endline
         (Printf.sprintf
            "%S %s %S"
            (Semver.to_string semver1)
            (match ordering with
             | Less -> "is *less* than"
             | Equal -> "is *equal* to"
             | Greater -> "is *greater* than")
            (Semver.to_string semver2));
       return ())
;;

let main = Command.group ~summary:"semver related commands" [ "compare", compare_cmd ]
