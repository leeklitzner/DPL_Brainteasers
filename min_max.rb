@array_numbers = []
def get_array
  puts "Enter the number you would like to add to the array."
  puts "Type DONE once you are finished."
  number=gets.strip
  ask_min_or_max(@array_numbers) if number == "DONE"
  number = number.to_i
  @array_numbers << number
  get_array
end

def ask_min_or_max(array)
  puts "Type min or max to retrieve the smallest or largest value."
  decision = gets.strip
  if decision == "min"
    find_min(array)
  elsif decision == "max"
    find_max(array)
  else
    puts "Invalid choice, please try again"
    ask_min_or_max(array)
  end

end

def find_min(array)
  min = array[0]
  i = 1
  while i < array.length
    if array[i] < min
      min = array[i]
    end
    i += 1
  end
  puts "The smallest value is #{min}"
  exit
end

def find_max(array)
  max = array[0]
  i = 1
  while i < array.length
    if array[i] > max
      max = array[i]
    end
    i += 1
  end
  puts "The largest value is #{max}"
  exit
end

get_array
