class Node
  attr_accessor :data, :next
  def initialize(value, next_node)
    @data = value
    @next = next_node
  end
end

class LinkList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def push(value)
    current  = @head
    new_node = Node.new(value, nil)
    new_node.next = current
    @head = new_node
  end

  def reverse
    prev    = nil
    current = @head
    while current != nil
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @head = prev
  end

  def head
    @head
  end

  def insert_after(value, node)
    current = @head
    while current.next != nil
      if current.data == value
        temp = current.next
        current.next = node
        node.next = temp
        break
      else
        current = current.next
      end
    end
  end

  def print
    current = @head
    str = [current.data]
    while current.next != nil
      current = current.next
      str << current.data
    end
    str.join("->")
  end

  def tail
    current = @head
    while current.next != nil
      current = current.next
    end
    current
  end
end


ll = LinkList.new(1)
ll.push(2)
ll.push(3)
ll.push(4)
p ll.print
puts "tail #{ll.tail.data}"
ll.reverse
p ll.print
#p ll.head
n9 = Node.new(9, nil)
ll.insert_after(2, n9)
p ll.print
