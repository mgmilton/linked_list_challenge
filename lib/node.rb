class Node
  attr_accessor :next_node
  attr_accessor :data

  def initialize(data)
    @data = data
    @next_node = nil
  end


end
