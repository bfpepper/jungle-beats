require "./lib/linked_list"
require "./lib/node"

class JungleBeats

  attr_reader :list
  attr_accessor :rate, :voice

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

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def play
    beats = list.to_string
    noise = @voice
    scale = @rate
    `say -r #{scale} -v #{noise} #{beats}`
    count
  end

end
