array = [ 16, 57, 63, 12, 78, 27]

def search_array(array, num)
  num_exists = false
  index = 0
  array.each do |x|
    if x == num
      num_exists = true
    return index
    end
    index += 1
  end
  if num_exists = false
    nil
  end
end

p search_array(array, 27)


def fib(num_of_numbers)
  fib_array = [0,1]
  num1 = 0
  num2 = 1
  while fib_array.length < num_of_numbers
    num3 = num1 + num2
    fib_array.push(num3)
    
    num1 = num2
    num2 = num3
  end
  return fib_array
end
p fib(100)
if fib(100).last == 218922995834555169026
  puts 'Your code works'
else
  puts 'Try again'
end


# define a bubble sort method with array parameter

def bubble_sort(array)
  # initialize sorted to true
  sorted = false
  #initialized swapped variable
  swapped = false
#define a variable that takes the length of the parameter(array.length)
  length = array.length

#loop until sorted is true
  until sorted
    sorted = true

# array length-1 times, loop
    for input in 0...(length -2)
# if the swapped varible is false after inner loop,
#the array is sorted
      if array[input] > array[input + 1]
        sorted = false
        array[input], array[input + 1] = array[input + 1], array[input]
      end
    end
  end
  # state of the swap is now true
  return array
  

  if swapped == false
    sorted = true
  end
end
test_array = [99,11,78,555,90,1,12,87]
p bubble_sort(test_array)