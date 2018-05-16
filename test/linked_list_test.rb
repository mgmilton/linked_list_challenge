gem 'minitest'
require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_head_initializes_with_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_returns_data
    list = LinkedList.new
    assert_equal 2, list.append(2)
  end

  def test_append_adds_data
    list = LinkedList.new
    list.append(2)
    assert_nil list.head.next_node
    assert_equal 2, list.head.data
  end

  def test_count_returns_the_amount_of_nodes
    list = LinkedList.new
    list.append(2)
    list.append(3)
    list.append(4)
    assert_equal 3, list.count
  end

end
