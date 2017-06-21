require_relative 'node'

class Tree
  def initialize(root = nil)
    @root = root
  end

  def is_valid?(root)
    if root == nil
      return true
    end

    if root.left_child != nil && root.left_child.value > root.value
      return false
    elsif root.right_child != nil && root.right_child.value < root.value
      return false
    end

    left_check = is_valid?(root.left_child)
    right_check = is_valid?(root.right_child)

    if !left_check || !right_check
      return false
    end

    return true
  end
end

root = Node.new(5)
root.left_child = Node.new(1)
root.right_child = Node.new(3)

tree = Tree.new(root)

print tree.is_valid?(root)
