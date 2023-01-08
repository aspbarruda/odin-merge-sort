def merge_sort(arr)
  sorted_arr = []
  left_arr = arr.slice!(0, arr.length/2)
  right_arr = arr
  left_arr = merge_sort(left_arr) unless left_arr.length == 1
  right_arr = merge_sort(right_arr) unless right_arr.length == 1
  left_counter = 0
  right_counter = 0
  until sorted_arr.length == (right_arr.length + left_arr.length)
    if left_arr[left_counter].nil?
      sorted_arr.push right_arr[right_counter]
      right_counter += 1
    elsif right_arr[right_counter].nil?
      sorted_arr.push left_arr[left_counter]
      left_counter += 1
    elsif left_arr[left_counter] <= right_arr[right_counter]
      sorted_arr.push left_arr[left_counter]
      left_counter += 1
    else
      sorted_arr.push right_arr[right_counter]
      right_counter += 1
    end
  end
  sorted_arr
end

array = [5, 2, 1, 3, 6, 4, 0, 7, 5]

p merge_sort(array)