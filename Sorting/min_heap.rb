class MinHeap
  attr_reader :heap

  def initialize()
    @heap = []
  end

  def findLeftIndex(my_index)
    return (my_index * 2) + 1
  end

  def findRightIndex(my_index)
    return (my_index * 2) + 2
  end

  def findParent(my_index)
    return (my_index - 1) / 2
  end

  def switchValuesAtIndices(index1,index2)
    temp = @heap[index1]
    @heap[index1] = @heap[index2]
    @heap[index2] = temp
  end

  def insert(value)
    @heap.push(value)
    index = @heap.length() - 1
    fixUp(index)
  end

  def fixUp(index)
    value = @heap[index]
    parent_index = findParent(index)
    if parent_index < 0
      return
    end
    parent_value = @heap[parent_index]
    if value < parent_value
      switchValuesAtIndices(index, parent_index)
      fixUp(parent_index)
    end
  end

  def fixDown(index)
    right_child_index = findRightIndex(index)
    left_child_index = findLeftIndex(index)

    #case there are no children
    if right_child_index >= @heap.length && left_child_index >= @heap.length
      return
    end

    #case there is only one left child
    if left_child_index < @heap.length && right_child_index >= @heap.length
      if @heap[index] > @heap[left_child_index]
        switchValuesAtIndices(index, left_child_index)
        fixDown(left_child_index)
      end
    end

    #case there are two children
    if right_child_index < @heap.length && left_child_index < @heap.length
      # TODO, irrelevant if children have children
      if @heap[right_child_index] < @heap[left_child_index]
        if @heap[right_child_index] < @heap[index]
          switchValuesAtIndices(index, right_child_index)
          fixDown(right_child_index)
        end
      elsif @heap[right_child_index] >= @heap[left_child_index]
        if @heap[left_child_index] < @heap[index]
          switchValuesAtIndices(index, left_child_index)
          fixDown(left_child_index)
        end
      end
    end
  end

  def empty?()
    return @heap.empty?
  end

  def get_minimum()
    if @heap.empty?
      return nil
    end
    return @heap[0]
  end

  def delete_minimum()
    index = @heap.length() - 1
    if @heap == nil
      return nil
    end
    if @heap.length == 0
      return nil
    end
    @heap[0] = @heap[@heap.length - 1]
    #@heap.index(movie_rating)
    @heap.pop()
    fixDown(0)
  end

  def find(value)
    #find MovieRating that matches the data
    if value == nil
      return nil
    end
    for current_value in @heap do
      if current_value.title == value.title
        return current_value
      end
    end
    return nil
  end

  def printIndex(index)
    #case where index is invalid
    if index >= @heap.length
      return
    end
    puts @heap[index].to_s
    printIndex(findLeftIndex(index))
    printIndex(findRightIndex(index))

  end

  def print()
    printIndex(0)
  end

end
