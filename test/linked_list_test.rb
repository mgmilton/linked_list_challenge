gem 'minitest'
require './lib/linked_list'
require 'minitest/autorun'
require 'minitest/pride'


class LinkedListTest < Minitest::Test
  def test_head_initializes_with_nil
    list = LinkedList.new
    assert_nil list.head
  end
end
