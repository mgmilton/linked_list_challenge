gem 'minitest'
require './lib/linked_list'
require './lib/node'
require 'minitest/autorun'
require 'minitest/pride'


class LinkedListTest < Minitest::Test
  def test_head_initializes_with_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_returns_data
    list = LinkedList.new
    assert_equal 2, list.append(2)
  end

end
