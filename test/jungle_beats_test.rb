require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/jungle_beats"

class JungleBeatsTest < Minitest::Test

  def test_it_can_create_a_class
    assert_instance_of JungleBeats, JungleBeats.new
  end

  def test_can_access_list
    jb = JungleBeats.new
    assert_instance_of LinkedList, jb.list
    assert_nil jb.list.head
  end

  def test_can_append_one_to_list
    jb = JungleBeats.new
    assert_equal "deep", jb.append("deep")
  end

  def test_can_append_multiple_to_list
    jb = JungleBeats.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
  end

  def test_it_can_count
    jb = JungleBeats.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
    assert_equal 3, jb.count
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_it_can_set_the_play_rate
    jb = JungleBeats.new
    jb.append("deep dop dop deep")
    assert_equal 100, jb.rate = 100
    assert_equal 200, jb.rate = 200
  end

  def test_it_can_reset_rate_of_play
    jb = JungleBeats.new
    jb.append("deep dop dop deep")
    assert_equal 100, jb.rate = 100 
    assert_equal 500, jb.reset_rate
  end

  def test_it_can_change_the_play_voice
    jb = JungleBeats.new
    jb.append("deep dop dop deep")
    assert_equal "Alice", jb.voice = "Alice"
  end

  def test_it_can_reset_voice_to_default
    jb = JungleBeats.new
    jb.append("deep dop dop deep")
    assert_equal "Alice", jb.voice = "Alice"
    assert_equal "Boing", jb.reset_voice
  end

end
