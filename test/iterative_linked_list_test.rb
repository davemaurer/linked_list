require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/iterative_linked_list'

class IterativeLinkedListTest < MiniTest::Test

  def setup
    @list = IterativeLinkedList.new
  end

  def test_it_exists
    assert @list
  end

  def test_it_starts_with_a_head_that_is_nil
    assert_equal nil, @list.head
  end

  def test_it_can_change_its_head
    @list.head = Node.new("new")
    assert_equal "new", @list.head
  end
end
