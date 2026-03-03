; C# rainbow bracket scopes

[
  ; Braces {}
  (block)
  (switch_body)
  (declaration_list)
  (enum_member_declaration_list)
  (accessor_list)
  (with_initializer)
  (anonymous_object_creation_expression)
  (initializer_expression)

  ; Parentheses ()
  (argument_list)
  (parameter_list)
  (bracketed_parameter_list)
  (parenthesized_expression)
  (tuple_expression)
  (tuple_type)
  (cast_expression)
  (constructor_initializer)

  ; Square brackets []
  (bracketed_argument_list)
  (attribute_argument_list)

  ; Angle brackets < >
  (type_argument_list)
  (type_parameter_list)
] @rainbow.scope

[ "(" ")" "{" "}" "[" "]" "<" ">" ] @rainbow.bracket
