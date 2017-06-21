require_relative 'node'

class Trie
  def initialize(root = nil)
    @root = root
  end

  def traverse
    queue = [@root]
    prefixes = []
    while queue.length > 0
      current_node = queue.shift
      prefixes.push(current_node.value)
      current_node.children.each do |child|
        queue.push(child)
      end
    end
    prefixes
  end
end

root = Node.new("a")
trie = Trie.new(root)
root.children << Node.new("b")
root.children << Node.new("c")

print trie.traverse
