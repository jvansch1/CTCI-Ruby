require_relative 'node'

class Tree

  attr_reader :root

  def initialize(root = nil)
    @root = root
  end

  def add_node(root, value)
    new_node = Node.new(value)

    if root.value > value
      if root.left_child == nil
        root.left_child = new_node
      else
        add_node(root.left_child, value)
      end
    else
      if root.right_child == nil
        root.right_child = new_node
      else
        add_node(root.right_child, value)
      end
    end
  end

  def create_tree(array)
    midpoint = array.length / 2

    @root = Node.new(array[midpoint])
    left_index = midpoint - 1
    right_index = midpoint + 1
    # remainder_array = array[0...midpoint] + array[midpoint + 1..-1]

    while left_index >= 0
      add_node(@root, array[left_index])
      left_index -= 1
    end

    while right_index < array.length
      add_node(@root, array[right_index])
      right_index += 1
    end
  end

  def traverse(root)
    if root == nil
      return nil
    end
    puts root.value
    traverse(root.left_child)
    traverse(root.right_child)
  end

  def left_children(root)
    if root == nil
      return nil
    end

    puts root.value
    left_children(root.left_child)
  end

end

array = [2,4,6,8,10,12,14,16,18, 20]
tree = Tree.new()

tree.create_tree(array)
tree.traverse(tree.root)
# tree.left_children(tree.root)
