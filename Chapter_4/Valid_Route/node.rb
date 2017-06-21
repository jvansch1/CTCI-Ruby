class Node

  attr_accessor :children, :value

  def initialize(value = nil, children = [])
    @value = value
    @children = children
  end
end
