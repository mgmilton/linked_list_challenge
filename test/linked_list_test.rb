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

  def test_to_s_returns_the_list_as_a_string
    list = LinkedList.new
    list.append(2)
    list.append(3)
    list.append(3)
    assert_equal "233", list.to_s
  end

  def test_prepend_adds_data_to_begining_of_list
    list = LinkedList.new
    list.append(2)
    list.prepend(3)
    assert_equal 2, list.count
    assert_equal "32", list.to_s
  end

  def test_insert_adds_data_at_specified_position
    list = LinkedList.new
    list.append(3)
    list.append(5)
    list.append(4)
    list.insert(1, 8)
    assert_equal 4, list.count
    assert_equal "3854", list.to_s
  end

  def test_pop_removes_and_returns_last_element_of_list
    list = LinkedList.new
    list.append(3)
    list.append(5)
    list.append(9)
    list.append(4)

    assert_equal 4, list.pop
    assert_equal 3, list.count
    assert_equal "359", list.to_s
  end

  def test_pop_works_for_a_list_of_one
    list = LinkedList.new
    list.append(3)

    assert_equal 3, list.pop
    assert_equal 0, list.count
  end

  def test_shift_returns_and_removes_first_element_of_list
    list = LinkedList.new
    list.append(2)
    list.append(4)
    list.append(3)

    assert_equal 2, list.shift
    assert_equal 2, list.count
    assert_equal "43", list.to_s
  end

  def test_sort_bubble_sorts_the_linked_list
    list = LinkedList.new
    list.append(2)
    list.append(4)
    list.append(3)

    list.sort

    assert_equal "234", list.to_s
  end
end
