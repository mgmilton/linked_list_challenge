require_relative "node"
require_relative "linked_list"

class Stack
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def empty?
    if list.count == 0
      return true
    else
      return false
    end
  end

  def push(num)
    list.append(num)
  end

  def pop
    list.pop
  end
end
