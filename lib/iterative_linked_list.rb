require_relative "./node"

class IterativeLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def first_node
    @head.data
  end

  def last_node
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    return current_node.data
  end

  def push(data)
    current_node = @head
    if @head == nil
      @head = Node.new(data, nil)
      puts "#{@head.data} was added to the list"
    else
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data, nil)
      puts "#{current_node.next_node.data} was added to the list"
    end
  end

  def pop
    current_node = @head
    if current_node == nil
      puts "There is no node to remove"
    elsif current_node.next_node == nil
      popped = current_node.data
      @head = nil
      return popped
    end
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    popped = current_node.next_node.data
    current_node.next_node = nil
    puts "#{popped} was removed"
  end

  def find(data)
    current_node = @head
    until current_node == nil
      return current_node if current_node.data == data
      current_node = current_node.next_node
    end
  end

  def index(data)
    current_node = @head
    node_location = 0
    until current_node.next_node == nil
      return node_location if current_node.data == data
      current_node = current_node.next_node
      node_location += 1
    end
    node_location
  end

  def list_length
    current_node = @head
    length = 1
    if @head == nil
      return 0
    end
    until current_node.next_node == nil
      current_node = current_node.next_node
      length += 1
    end
    return length
  end

  def insert(place, data)
    current_node = @head
    node_location = 1
    until current_node.next_node.next_node == nil
      if node_location == place
        current_node.next_node = data
      end
      current_node = current_node.next_node
      node_location += 1
    end
  end
end

list = IterativeLinkedList.new
list.push("David")
list.push("Sally")
list.push("Drew")
list.push("Ralph")
puts list.head.data
list.pop
puts list.find("Drew").data
puts list.index("Sally")
puts list.index("Drew")
puts list.index("David")
puts list.last_node
puts list.first_node
puts list.list_length
list.insert(2, "Margaret")
# list.pop
# puts list.list_length
# list.pop
# puts list.list_length
# list.pop
# puts list.list_length
list.index("Margaret")
