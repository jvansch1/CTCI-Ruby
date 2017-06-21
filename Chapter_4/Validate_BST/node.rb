class Node

  attr_accessor :value, :left_child, :right_child

  def initialize(value)
    @value = value
    @right_child = nil
    @left_child = nil
  end
end
