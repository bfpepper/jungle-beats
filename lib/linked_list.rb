require "node"

class LinkedList

  attr_reader :head

  def initialize(head =nil)
    @head = head
  end

  def append(sound)
    #creaete new node
    #add node to end of current list
    #expected functionality = list.append("doop") => "doop"
  end

end

# > list.append("doop")
# => "doop"

# > list
# => <LinkedList head=<Node data="doop" next_node=nil
      #5678904567890> 45678904567>

# > list.head.next_node
# => nil

# > list.count
# => 1

# > list.to_string
# => "doop"
