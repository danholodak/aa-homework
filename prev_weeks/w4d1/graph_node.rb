require 'set'
class GraphNode

    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    

end

def bfs(starting_node, target_value)
    return starting_node if starting_node.value == target_value
    queue = [starting_node]
    visited = Set.new
    visited << starting_node
    while !queue.empty?
        first = queue.shift
        first.neighbors.each do |neighbor|
            return neighbor if neighbor.value == target_value
            queue << neighbor unless visited.include?(neighbor)
            visited << neighbor
        end
    end
    nil

end
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "b")
p bfs(a, "f")