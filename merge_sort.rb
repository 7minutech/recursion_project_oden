def merge_sort(arr)
  return arr if arr.length == 1

  mid = (arr.length / 2.0).round
  left_half = arr.slice(0, mid)
  right_half = arr.slice(mid, arr.length - mid)

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(sorted_left, sorted_right)
end

def merge(left, right)
  sorted_arr = []

  until left.empty? || right.empty?
    if left.first <= right.first
      sorted_arr.push(left.shift)
    else
      sorted_arr.push(right.shift)
    end
  end
  sorted_arr + left + right
end

p merge_sort([3, 2, 1, 13, 8, 0, 1])
