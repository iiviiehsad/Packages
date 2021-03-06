# SYNTAX TEST "Packages/R/R.sublime-syntax"

# comment
# ^^^^^^^ comment.line.number-sign.r

# constants
pi
# <- support.constant.misc.r
letters
# <- support.constant.misc.r
LETTERS
# <- support.constant.misc.r
month.name
# <- support.constant.misc.r
month.abb
# <- support.constant.misc.r
TRUE
# <- constant.language.r
FALSE
# <- constant.language.r
NULL
# <- constant.language.r
NA
# <- constant.language.r
NA_integer_
# <- constant.language.r
NA_real_
# <- constant.language.r
NA_complex_
# <- constant.language.r
NA_character_
# <- constant.language.r
Inf
# <- constant.language.r
NaN
# <- constant.language.r

  12L
# ^^^ constant.numeric.integer.decimal.r

  12
# ^^ constant.numeric.float.decimal.r

  0x1afL
# ^^^^^^ constant.numeric.integer.hexadecimal.r

  0X1afL
# ^^^^^^ constant.numeric.integer.hexadecimal.r

  0x1af
# ^^^^^ constant.numeric.float.hexadecimal.r

  0X1af
# ^^^^^ constant.numeric.float.hexadecimal.r

  99.99e-12
# ^^^^^^^^^ constant.numeric.float.decimal.r

  99.99E-12
# ^^^^^^^^^ constant.numeric.float.decimal.r

  99.99e+12
# ^^^^^^^^^ constant.numeric.float.decimal.r

  99.99E+12
# ^^^^^^^^^ constant.numeric.float.decimal.r

  99.9999
# ^^^^^^^ constant.numeric.float.decimal.r

 .9999
# ^^^^ constant.numeric.float.decimal.r

  12i
# ^^^ constant.numeric.imaginary.decimal.r

  0x1afi
# ^^^^^^ constant.numeric.imaginary.hexadecimal.r

  0x1afi
# ^^^^^^ constant.numeric.imaginary.hexadecimal.r

  99.99e-12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r

  99.99E-12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r

  99.99e+12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r

  99.99E+12i
# ^^^^^^^^^^ constant.numeric.imaginary.decimal.r

  99.9999i
# ^^^^^^^^ constant.numeric.imaginary.decimal.r

  foo.99 <- 1
#    ^^^ - constant.numeric
#        ^^ keyword.operator.assignment.r

x <- "abc"
# ^^ keyword.operator.assignment.r
#    ^ punctuation.definition.string.begin.r
#    ^^^^^ string.quoted.double.r
#        ^ punctuation.definition.string.end.r

x <- 'abc'
# ^^ keyword.operator.assignment.r
#    ^ punctuation.definition.string.begin.r
#    ^^^^^ string.quoted.single.r
#        ^ punctuation.definition.string.end.r

"\n\r"
#^^^^ constant.character.escape.r

for (i in 1:10) {
# <- keyword.control.r
#   ^ punctuation.section.parens.begin.r
#      ^^ keyword.control.r
#             ^ punctuation.section.parens.end.r
#               ^ punctuation.section.braces.begin.r
}
# <- punctuation.section.braces.end.r

foo[bar]
#  ^ punctuation.section.brackets.single.begin.r
#  ^^^^^ meta.item-access.r
#   ^^^ meta.item-access.r meta.item-access.arguments.r
#      ^ punctuation.section.brackets.single.end.r


foo[[bar]]
#  ^^ punctuation.section.brackets.double.begin.r
#  ^^^^^^^ meta.item-access.r
#    ^^^ meta.item-access.r meta.item-access.arguments.r
#       ^^ punctuation.section.brackets.double.end.r


foo[1:10]
#    ^ meta.item-access.r meta.item-access.arguments.r keyword.other.r

f = function(x, y){ }
#^^^^^^^^^^^^^^^^^ meta.function.r
# <- entity.name.function.r
# ^ keyword.operator.assignment.r
#   ^^^^^^^^ keyword.control.r
#           ^ punctuation.section.parens.begin.r
#            ^^^^ meta.function.parameters.r
#            ^ variable.parameter.r
#             ^ punctuation.separator.parameters.r
#                ^ punctuation.section.parens.end.r
#                 ^ punctuation.section.braces.begin.r
#                   ^ punctuation.section.braces.end.r

function(x = "string", y = 2) {}
#        ^ variable.parameter.r
#            ^^^^^^^^ meta.function.parameters.r string.quoted.double.r
#                      ^ variable.parameter.r
#                          ^ meta.function.parameters.r constant.numeric.float.decimal.r

foo(200, x = function(x) {x + y})
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.r
# <- variable.function.r
#  ^ punctuation.section.parens.begin.r
#   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.parameters.r
#   ^^^ constant.numeric.float.decimal.r
#        ^ variable.parameter.r
#          ^ keyword.operator.assignment.r
#            ^^^^^^^^^^^ meta.function.r
#                               ^ punctuation.section.parens.end.r

.foo(200, x = function(x) {x + y})
# <- meta.function-call.r
#^^^^^^^^^^^^^^^^^^^^^ meta.function-call.r
# <- variable.function.r
#   ^ punctuation.section.parens.begin.r
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.function-call.parameters.r
#    ^^^ constant.numeric.float.decimal.r
#         ^ variable.parameter.r
#           ^ keyword.operator.assignment.r
#             ^^^^^^^^^^^ meta.function.r
#                                ^ punctuation.section.parens.end.r


print.foo()
#^^^^^^^^ variable.function.r

  plot()
# ^^^^^^ meta.function-call.r
# ^^^^ support.function.r

#' @param xyz abcde
#^^^^^^^^^^^^^^^^^^ comment.line.roxygen.r
#  ^^^^^^ keyword.other.r
#         ^^^ variable.parameter.r


# issue #1019
foo[[bar[1]]] #
#         ^ source.r meta.item-access.r meta.item-access.arguments.r meta.item-access.r
#              ^ - meta.item-access.r
