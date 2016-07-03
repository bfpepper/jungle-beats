require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_it_can_create_a_class
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_count_is_zero_for_empty_list
    list = LinkedList.new
    assert_equal 0 , list.count
  end

  def test_head_is_nil_for_new_instance
    list = LinkedList.new
    assert_nil list.head
  end

  def test_a_list_is_created_with_a_node
    list = LinkedList.new
    list.append("doop")
    head_node = list.head
    assert_equal "doop", head_node.data
  end

  def test_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    assert_equal nil, list.head.next_node
  end

  def test_list_can_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_sound_is_a_string
    list = LinkedList.new
    list.append("doop")
    head_node = list.head
    assert_equal "doop", head_node.data
  end

  def test_it_can_add_multiple_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal "deep", list.head.next_node.data
    assert_equal 2, list.count
    assert_equal "doop deep", list.to_string
  end

  def test_it_can_add_a_node_to_the_front
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("eeep")
    assert_equal "eeep", list.head.data
    assert_equal 3, list.count
    assert_equal "eeep doop deep", list.to_string
  end

  def test_it_can_insert_a_sound
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.insert(1, "woo")
    assert_equal "doop woo deep", list.to_string
  end

  def test_it_can_find_a_word
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.prepend("slop")
    assert_equal "deep", list.find(2, 1)
  end

end
