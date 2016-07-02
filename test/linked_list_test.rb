require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_it_can_create_a_class
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_is_nil_for_new_instance
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_data
    list = LinkedList.new
    assert_equal list.append("doop"), list.head.data
  end



end
