class Node
  attr_reader :value, :children
  attr_accessor :marked

  def initialize(value)
    @value = value
    @children = []
    @marked = false
  end

  def add_child(value)
    n = Node.new(value)
    @children << n
    n
  end

  def dfs(value)
    # if the given value is the same as this node - return self
    # Otherwise call dfs on each child and see if they found it
    # if the child found it, return the result
    # otherwise move on to the next child
    # If no child can find it, return nil

     # label value as discovered
     #  for all edges from v to w in G.adjacentEdges(v) do
     #      if vertex w is not labeled as discovered then
     #       recursively call DFS(value)
    if value == self.value
      return self
    else
      self.children.each do |child|
          new_node = child.dfs(value)
          if new_node
            if new_node.value == value
              return new_node
            end
          end
        end
    end
    return nil
  end

  def bfs(value, queue = [])
    # if the given value is the same as this node return self
    # Otherwise add all of this nodes children to the queue
    # of nodes needed to be searched
    #
    # While the queue is not empty
    # grab the first element in the queue (and remove it)
    # run bfs on that node with the proper argument and get the result
    # if that node found what you're looking for, return the resulting node
    # Otherwise, move on to the next node
    #
    # If the queue is empty and you haven't found it yet, return nil

  end
end
