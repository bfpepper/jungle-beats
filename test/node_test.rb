require "minitest/autorun"
require "minitest/pride"
require "./lib/node"

class NodeTest < Minitest::Test

  def test_it_can_create_a_class
    assert_instance_of Node, Node.new
  end

  def test_it_can_hold_sound
    node = Node.new("blop")
    assert_equal "blop", node.data
  end

  def test_next_node_nil_for_new_next_node
    node = Node.new("blop")
    assert_nil node.next_node
  end

end
