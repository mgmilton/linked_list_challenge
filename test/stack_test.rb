gem 'minitest'
require './lib/linked_list'
require './lib/node'
require './lib/stack'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class StackTest < Minitest::Test

  def test_stack_starts_empty
    stack = Stack.new
    assert(true, stack.empty?)
  end

  def test_push_appends_to_list
    stack = Stack.new

    assert_equal 3, stack.push(3)
  end

  def test_pop_removes_and_returns_last_element
    stack = Stack.new
    stack.push(5)
    stack.push(4)
    stack.push(8)

    assert_equal 8, stack.pop
  end
end
