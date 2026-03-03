; Markdown indent queries for Helix
; Markdown is not indentation-structured, but list continuations and
; code block content benefit from these hints.

[
  (list_item)
  (block_quote)
] @indent

[
  (list_item)
  (block_quote)
] @indent.always

(fenced_code_block
  (code_fence_content) @indent)
