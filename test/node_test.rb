require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'

class NodeTest < MiniTest::Test
  attr_reader :node

  def setup
    @node = Node.new(data ="new_node", link =nil)
  end

  def test_a_new_node_can_take_data
    assert_equal "new_node", @node.data
  end

  def test_a_new_node_can_take_different_data
    @node.data = "different_node"
    assert_equal "different_node", @node.data
  end

  def test_a_new_node_starts_with_a_link_of_nil
    assert_equal nil, @node.link
  end

  def test_a_new_node_can_have_a_new_node_as_its_link
    @node.link = Node.new("new_link")
    assert_equal "new_link", @node.link.data
  end

  def test_a_node_can_change_its_link
    @node.link = Node.new("new_link")
    @node.link = Node.new("different_link")
    assert_equal "different_link", @node.link.data
  end
end
