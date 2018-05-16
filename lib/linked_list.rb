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

  def count
    count = 0
    current = @head
    until current.nil?
      current = current.next_node
      count += 1
    end
    count
  end

  def to_s
    temp = []
    current = @head
    until current.nil?
      temp << current.data
      current = current.next_node
    end
    temp.join("")
  end

  def prepend(num)
    current = Node.new(num)
    current.next_node = @head
    @head = current
  end

  def insert(position, num)
    current = @head
    if position == 0
      prepend(num)
    elsif position < count
      insert_node(current, position, num)
    else
      return "Position provided is longer than list!"
    end
  end

 private
    def empty?
      @head == nil
    end

    def tail
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current
    end

    def insert_node(current, position, num)
      current = find_node(position, current)
      right_node = current.next_node
      current.next_node = Node.new(num)
      current.next_node.next_node = right_node
    end

    def find_node(position, current)
      (position - 1).times { current = current.next_node }
      current
    end

end
