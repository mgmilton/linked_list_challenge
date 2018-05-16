require_relative "node.rb"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(num)
    current = @head
    new_tail = Node.new(num)
    if empty?
      @head = new_tail
    else
      tail.next_node = new_tail
    end
    new_tail.data
  end


 private
    def empty?
      @head == nil
    end

end
