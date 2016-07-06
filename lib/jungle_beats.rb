require "./lib/linked_list"
require "./lib/node"

class JungleBeats

  attr_reader :list

  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
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

  def rate(speed)
    @rate = speed
  end

  def reset_rate
    @rate = 500
  end

  def voice(name)
    @voice = name
  end

  def reset_voice
    @voice = "Boing"
  end

  def play
    beats = list.to_string
    noise = @voice
    thing = @rate
    `say -r #{thing} -v #{noise} #{beats}`
    count
  end

end
