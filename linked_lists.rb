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
    old_tail_index = self.size - 1
    new_tail_index = self.size - 2
    old_tail = at(old_tail_index)
    new_tail = at(new_tail_index)
    new_tail.link = nil
    @tail = new_tail
    old_tail
  end

  def contains? val
    current_node = @head
    if current_node.value == val
      return true
    else
      current_node = current_node.link
      until current_node == nil
        if current_node.value == val
          return true
        end
        current_node = current_node.link
      end
    end

    false
  end

  def find data
    if !contains? data
      nil
    else
      current_node = @head
      current_index = 0
      if current_node.value == data
        return current_index
      else
        until current_node.value == data
          current_index += 1
          current_node = current_node.link
        end
        return current_index
      end
    end
  end

  def to_s
    ll_string = ''
    current_node = @head
    if current_node == nil
      ll_string
    else
      until current_node == nil
        ll_string << "(#{current_node.value}) -> "
        current_node = current_node.link
      end
      ll_string << 'nil'
    end
    ll_string
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

t.value = 'words'


l = LinkedList.new

l.append s
l.append t
l.append u

p l.size

p l.head

p l.at 2

#p l.pop

p l.contains? 5
p l.contains? nil

p l.find 'pants'
p l.find 'words'

p l.to_s