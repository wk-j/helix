; C# indent queries

[
  (block)
  (switch_body)
  (switch_section)
  (argument_list)
  (parameter_list)
  (bracketed_parameter_list)
  (bracketed_argument_list)
  (initializer_expression)
  (declaration_list)
  (enum_member_declaration_list)
  (accessor_list)
  (with_initializer)
  (anonymous_object_creation_expression)
  (type_argument_list)
  (type_parameter_list)
  (attribute_argument_list)
  (tuple_expression)
  (tuple_type)
] @indent

[
  "}"
  ")"
  "]"
] @outdent

; Single-statement bodies (no braces) — if/else/while/for/foreach
(if_statement
  consequence: (_) @indent
  (#not-kind-eq? @indent "block")
  (#set! "scope" "all"))

(if_statement
  alternative: (_) @indent
  (#not-kind-eq? @indent "block")
  (#set! "scope" "all"))

(while_statement
  body: (_) @indent
  (#not-kind-eq? @indent "block")
  (#set! "scope" "all"))

(for_statement
  body: (_) @indent
  (#not-kind-eq? @indent "block")
  (#set! "scope" "all"))

(foreach_statement
  body: (_) @indent
  (#not-kind-eq? @indent "block")
  (#set! "scope" "all"))

; else/catch/finally — outdent to align with the matching keyword
(if_statement
  "else" @outdent)

(try_statement
  (catch_clause
    "catch" @outdent))

(try_statement
  (finally_clause
    "finally" @outdent))

; Align argument/parameter lists to the first element
(argument_list
  . (_) @anchor
  (#set! "scope" "tail")) @align

(parameter_list
  . (_) @anchor
  (#set! "scope" "tail")) @align

(bracketed_argument_list
  . (_) @anchor
  (#set! "scope" "tail")) @align

(bracketed_parameter_list
  . (_) @anchor
  (#set! "scope" "tail")) @align
