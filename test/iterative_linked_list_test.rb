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

  def test_it_starts_with_a_head
    assert @list.head
  end
end
