#!/usr/bin/env ruby

def print_odd_numbers(n)
  print "Even numbers from zero to #{n}: "
  (0..n).each { |number| print "#{number} " if (number % 2) == 1 }
  puts
end

print_odd_numbers(30)


def return_max_value_of_array(array)
  max_value = nil

  array.each do |element|
    if max_value.nil? then max_value = element end
    if element > max_value then max_value = element end
  end

  puts "The max value is #{max_value} for the array #{array}"
end

array = [1,4,6,8,99]
return_max_value_of_array(array)


def multiplication_table(n)
  results = []

  (1..n).each do |row_index|
    row = []
    (1..n).each { |column_index| row << row_index * column_index }
    results << row
  end

  results.each do |row|
    header = '%-3s ' * row.length
    puts header % row
  end
end

multiplication_table(5)
