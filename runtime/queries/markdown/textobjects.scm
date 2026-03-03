; Markdown textobjects for Helix

; Headings — treated as functions (the most common structural unit)
(atx_heading) @function.around
(atx_heading
  (inline) @function.inside)

(setext_heading) @function.around
(setext_heading
  (paragraph) @function.inside)

; Paragraphs
(paragraph) @paragraph.around

; Code blocks
(fenced_code_block) @class.around
(fenced_code_block
  (code_fence_content) @class.inside)

(indented_code_block) @class.around

; List items
(list_item) @entry.around

; Comments (HTML comments in markdown)
(html_block) @comment.around

; Block quotes
(block_quote) @comment.around
(block_quote
  (_) @comment.inside)
