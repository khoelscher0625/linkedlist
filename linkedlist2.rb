class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
   @value = value
   @next_node = next_node
  end
end

def reverse_list(list, previous=nil)
  if list
    next_node = list.next_node
    list.next_node = previous
    reverse_list(next_node, list)
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

def detect_loop(list)
  fast_pointer = list
  slow_pointer = list

  while fast_pointer
    if fast_pointer
      puts false
      fast_pointer = fast_pointer.next_node
    end

    if fast_pointer
      puts false
      fast_pointer = fast_pointer.next_node
      slow_pointer = slow_pointer.next_node
    end

    if fast_pointer == slow_pointer
      puts true
      return
      end
  end


end

node1 = LinkedListNode.new(1)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(3, node2)
node1.next_node = node3
detect_loop(node1)


