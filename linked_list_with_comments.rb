class LinkedListIteration
  attr_reader :head

  def initialize
    @head = nil #starts empty when created.
  end

  def push(data)
    if head.nil? #Is the list empty?
      @head = Node.new(data) #The list is empty! Lets set @head to a new node
    else
      current = @head #we set current to Head so we can traverse it.
      while current.next_node != nil  do # Is the next node empty?
        current = current.next_node #Yes, let us move down the list
      end
      current.next_node = Node.new(data) #we are at the last item in the list
      # lets create a new node here
    end
  end

  def pop
    if head.nil? #is list empty?
      nil #it is empty, we return nil
    elsif head.next_node.nil? #is there only one item in list?
      result = @head.data #store data of item in result
      @head = nil #empty the list
      return result #return the data of what we deleted
    else
      current =  @head #set head to give a starting point to traverse list
      while current.next_node.next_node != nil do #loop to get to the next
        # item in list. We do this because we need to get to the next to
        # last item in the list to delete it. You can't delete when current is
        # the last item in the list
        current = current.next_node
      end
      result = current.next_node.data # set result of data of thing we want to
      #delete
      current.next_node = nil #actually delete node
      result #return the data of what we deleted
    end
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end

