require_relative 'node'

class Graph
  def initialize(root = nil)
    @root = root
    @visited = {}
  end

  def add_child(parent, child)
    parent.children << child
  end

  def valid_path_dfs(source, destination)
    if @visited[source]
      return false
    end

    if source.value == destination.value
      return true
    end

    @visited[source] = true

    source.children.each do |child|
      result = valid_path_dfs(child, destination)
      return result if result
    end

    false

  end

end

root = Node.new(1)
graph = Graph.new(root)
node_two = Node.new(2)
node_three = Node.new(3)
node_four = Node.new(4)

graph.add_child(root, node_two)
graph.add_child(root, node_three)
graph.add_child(root, node_four)

node_five = Node.new(5)
node_six = Node.new(6)
node_seven = Node.new(7)

graph.add_child(node_two, node_five)
graph.add_child(node_two, node_six)
graph.add_child(node_two, node_seven)

node_eight = Node.new(8)
node_nine = Node.new(9)
node_ten = Node.new(10)

graph.add_child(node_three, node_eight)
graph.add_child(node_three, node_nine)
graph.add_child(node_three, node_ten)

node_eleven = Node.new(11)

print graph.valid_path_dfs(root, node_eleven)
