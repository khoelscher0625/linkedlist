class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
   @value = value
   @next_node = next_node
  end
end

def print_values(list_node)
 if list_node
    print "#{list_node.value} --> "
   print_values(list_node.next_node)
  else
    print "nil"
    return
  end
end




class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push a value onto the stack
  def push_node(value)
    @data = LinkedListNode.new(value, @data)
  end


  # Pop an item off the stack
  # Remove the last item that was pushed onto the 
  # stack and return the value to the user

  def pop_node
   value = @data.value
   @data = @data.next_node
   value
  end
  
end

  def reverse_list(list)
      rev_stack = Stack.new

      while list
          rev_stack.push_node(list.value)
          list = list.next_node
      end

      rev_stack.data
  end


stack = Stack.new
stack.push_node(1)
stack.push_node(2)
stack.push_node(3)
p stack
puts stack.pop_node
puts stack.pop_node
node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)
final_node = reverse_list(node3)
print_values(node3)
puts "______"
print_values(final_node)



