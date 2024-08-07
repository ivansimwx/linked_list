# represent full list
class LinkedList
  attr_accessor :head, :tail, :array_link_list

  def initialize
    @array_link_list = Array.new
    @head = nil
    @tail = nil
  end

  def append(value)
    # adds a new node containing value to the end of the list
    @tail = Node.new(value)
    if @array_link_list.empty?
      @head = @tail
    else
      @array_link_list[-1][1] = @tail.value
    end
    @array_link_list.push([@tail.value, @tail.next_node])
  end

  def prepend(value)
    # adds a new node containing value to the start of the list
    @head = Node.new(value)
    if @array_link_list.empty?
      @tail = @head
    else
      @head.next_node = @array_link_list[0][1]
    end
    @array_link_list.unshift([@head.value, @head.next_node])
  end

  def size
    @array_link_list.length
  end

  def at(index)
    # returns the node at the given index
    @array_link_list[index][0]
  end

  def pop
    # removes the last element from the list
    @array_link_list.pop
  end

  def contains?(value)
    # returns true if the passed in value is in the list and otherwise returns false.
  end

  def find(value)
    # returns the index of the node containing value, or nil if not found.
  end

  def to_s
    # represent your LinkedList objects as strings, so you can print them out and preview them in the console.
    # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    @array_link_list.each do |node|
      print "(#{node[0]}) -> "
    end
    print "nil"
  end

  def insert_at(value, index)
    # that inserts a new node with the provided value at the given index.
  end

  def remove_at(index)
    # that removes the node at the given index.
  end
end
