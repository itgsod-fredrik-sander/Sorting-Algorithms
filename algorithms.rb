# INSERTIONSORT
#
# Sorts an array by value from smaller to bigger.
#
# array - The array to be sorted.
#
# Examples
#
#    insertionsort([1, 4, 7, 6, 1])
#    # => [1, 1, 4, 7, 6, 1]
#
#    insertonsort([1, 3, 91, 51, 108])
#    # => [1, 3, 51, 91, 108]
#
# Returns the sorted array

def insertionsort(array)
  return array if array.size == 1

  (1..array.size-1).each do |i|
    j = i
    
    while j > 0 and array[j] < array[j-1]
      array[j], array[j-1] = array[j-1], array[j]
      j -= 1
    end
  end

  return array
end

# SELECTIONSORT
#
# Sorts an array by value from smaller to bigger.
#
# array - The array to be sorted.
#
# Examples
#
#    selectionsort([1, 4, 7, 6, 1])
#    # => [1, 1, 4, 6, 7, 1]
#
#    selectionsort([1, 3, 91, 51, 108])
#    # => [1, 3, 51, 91, 108]
#
# Returns the sorted array

def selectionsort(array)
  return array if array.size == 1

  array.each_with_index do |nr, i|
    min_index = i

    (i+1..array.size-1).each do |j|
      if array[min_index] > array[j]
        min_index = j
      end
    end

    array[min_index], array[i] = array[i], array[min_index] 
  end

  return array
end

# BUBBLESORT
#
# Sorts an array by value from smaller to bigger.
#
# array - The array to be sorted.
#
# Examples
#
#    bubblesort([1, 4, 7, 6, 1])
#    # => [1, 1, 4, 6, 7, 1]
#
#    bubblesort([1, 3, 91, 51, 108])
#    # => [1, 3, 51, 91, 108]
#
# Returns the sorted array

def bubblesort(array)
  return array if array.size == 1

  array.each_with_index do |nr1, outer|
    array.each_with_index do |nr2, inner|
      if nr1 < nr2
        array[outer], array[inner] = array[inner], array[outer]
      end
    end
  end
  
  return array
end

# QUICKSORT
#
# Sorts an array by value from smaller to bigger.
#
# array - The array to be sorted.
#
# Examples
#
#    quicksort([1, 4, 7, 6, 1])
#    # => [1, 1, 4, 6, 7, 1]§
#
#    quicksort([1, 3, 91, 51, 108])
#    # => [1, 3, 51, 91, 108]
#
# Returns the sorted array

def quicksort(array, start_pos, end_pos)
  if start_pos < end_pos
    pivot = array[end_pos]
    split_index = start_pos

    (start_pos..end_pos-1).each do |i|
      if array[i] <= pivot
        array[i], array[split_index] = array[split_index], array[i]
        split_index += 1
      end
    end

    array[split_index], array[end_pos] = array[end_pos], array[split_index]

    quicksort(array, start_pos, split_index-1)
    quicksort(array, split_index+1, end_pos)
  end

  return array
end
