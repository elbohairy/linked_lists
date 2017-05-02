class LinkedList
  
  def initialize
    @head = nil
    @tail = nil
  end
  
  def append node
    if @head == nil
      @head = node
      @tail = node
    else
      @tail = node
    end
  end
    

  
  def prepend node
    if @head == nil
      @head = node
      @tail = node
    else
      @head = node
    end
  end
  
  def size
    counter = 0
    current_node = @head
    
    if current_node == nil
      counter
    else
      counter += 1
      until current_node.link == nil
        current_node = current_node.link
        counter += 1
      end
      counter
    end
        
  end
  
  def head
    @head
  end
  
  def tail
    @tail
  end
  
  def at index
    current_node = @head
    counter = 0
    if index == 0
      current_node
    else
      counter += 1
      current_node = current_node.link
      until counter == index
        current_node = current_node.link
        counter += 1
      end
      current_node
    end
  end

  def pop
  end

  
end

class Node
  attr_accessor :link, :value
  
  def initialize 
    @link = nil
    @value = nil
  end
  
end

s = Node.new
t = Node.new
u = Node.new

u.value = 5

s.link = t
t.link = u



l = LinkedList.new

l.append s
l.append t
l.append u

p l.size

p l.head

p l.at 2