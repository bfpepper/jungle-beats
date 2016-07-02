require "minitest/autorun"
require "minitest/nyan_cat"
require "./lib/jungle_beats"

class JungleBeatsTest < Minitest::Test

  def test_it_can_create_a_class
    assert_instance_of JungleBeats, JungleBeats.new
  end

end
