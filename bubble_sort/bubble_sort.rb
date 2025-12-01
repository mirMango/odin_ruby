def bubble_sort(array)
  n = array.length
  swapped = true

  while swapped
    swapped = false

    for i in (0...n-1)
      if array[i] > array[i + 1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    if swapped == false
      break
    end
  end
end

array = [4,3,78,2,0,2]

bubble_sort(array)

p array