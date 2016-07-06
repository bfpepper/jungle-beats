require "./lib/linked_list"
require "./lib/node"

class JungleBeats

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end


  def append(sound)
    new_sound = sound.split(" ")
    new_sound.each do |a_sound|
      list.append(a_sound)
    end
    new_sound.join(" ")
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
    beats
  end

end
