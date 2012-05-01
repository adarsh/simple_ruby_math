#!/usr/bin/env ruby

def print_odd_numbers(n)
  out = (0..n).inject([]) { |out, n| if n % 2 == 1 then out << n else out end }
  puts "Odd numbers from 0 to #{n}: #{out}"
end

print_odd_numbers(30)



def return_max_value_of_array(r)
  maximum = r.inject { |max, n| if n > max then max = n else max end }
  puts "The max value is #{maximum} for the array #{r}"
end

array = [ 1, 4, 6, 8, 207]
return_max_value_of_array(array)



def multiplication_table(n)
  results = (1..n).inject([]) do |collector, row_index|
    collector << (1..n).inject([]) { |row, n| row << row_index * n }
  end

  results.each { |row| puts '%-3s ' * row.length % row }
end

multiplication_table(7)
