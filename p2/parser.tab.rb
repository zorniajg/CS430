#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'

require_relative 'lexer.rex'
class ExprParser < Racc::Parser
##### State transition tables begin ###

racc_action_table = [
     7,     5,     6,     4,    13,     7,     5,     6,     2,     2,
     3,     3,     2,     2,     3,     3,     2,     9,     3,     7,
     7 ]

racc_action_check = [
     8,     8,     8,     1,     8,     1,     1,     1,     5,     6,
     5,     6,     7,     0,     7,     0,     2,     4,     2,    10,
    11 ]

racc_action_pointer = [
     8,     3,    11,   nil,    17,     3,     4,     7,    -2,   nil,
    17,    18,   nil,   nil ]

racc_action_default = [
    -6,    -6,    -6,    -5,    -6,    -6,    -6,    -6,    -6,    14,
    -1,    -2,    -3,    -4 ]

racc_goto_table = [
     1,   nil,     8,   nil,   nil,    10,    11,    12 ]

racc_goto_check = [
     1,   nil,     1,   nil,   nil,     1,     1,     1 ]

racc_goto_pointer = [
   nil,     0 ]

racc_goto_default = [
   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 9, :_reduce_1,
  3, 9, :_reduce_2,
  3, 9, :_reduce_3,
  3, 9, :_reduce_4,
  1, 9, :_reduce_5 ]

racc_reduce_n = 6

racc_shift_n = 14

racc_token_table = {
  false => 0,
  :error => 1,
  "*" => 2,
  "+" => 3,
  "-" => 4,
  "(" => 5,
  ")" => 6,
  :INT => 7 }

racc_nt_base = 8

racc_use_result_var = false

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "\"*\"",
  "\"+\"",
  "\"-\"",
  "\"(\"",
  "\")\"",
  "INT",
  "$start",
  "expr" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'parser.y', 7)
  def _reduce_1(val, _values)
     EAdd.new(val[0], val[2]) 
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 8)
  def _reduce_2(val, _values)
     ESub.new(val[0], val[2]) 
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 9)
  def _reduce_3(val, _values)
     EMul.new(val[0], val[2]) 
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 10)
  def _reduce_4(val, _values)
     val[1] 
  end
.,.,

module_eval(<<'.,.,', 'parser.y', 11)
  def _reduce_5(val, _values)
     EInt.new(val[0]) 
  end
.,.,

def _reduce_none(val, _values)
  val[0]
end

end   # class ExprParser
