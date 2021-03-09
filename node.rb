class Node
  attr_reader :element, :next_node

  def initialize(element, next_node)
    @element = element
    @next_node = next_node
  end
end