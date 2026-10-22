; Keys end in ".http" so a theme can color HTTP apart from code.
; Themes without these keys fall back to the plain key (keyword, string, ...).

(request_separator) @comment.http

(comment) @comment.doc.http

(comment
  "@" @comment.tag.http
  name: (_) @comment.tag.http)

(comment
  "@"
  value: (_) @attribute.http)

(method) @keyword.http

(http_version) @keyword.http

(request
  url: (_) @string.special.url.http)

(header
  name: (_) @property.http)

(header
  ":" @punctuation.delimiter.http)

(header
  value: (_) @string.header.http)

(variable_declaration
  "@" @keyword.http)

(variable_declaration
  name: (_) @variable.declaration.http)

(variable_declaration
  "=" @operator.http)

(variable_declaration
  value: (_) @string.http)

(variable
  ["{{" "}}"] @punctuation.bracket.http)

(variable
  name: (_) @variable.http)

(status_code) @number.http

(status_text) @string.http

(external_body
  path: (_) @string.special.path.http)
