#Jacob Zorniak
require "test/unit"

class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
end
class BST_Test < Test::Unit::TestCase
  def test_node
    Node n = Node.new(
 end
