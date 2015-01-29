require_relative "checksplitter2"
require "pry"

# Verification Test
# $10 initital bill, 5 people, 50% tip => $3 per person
# test1 = Checksplitter.new(10, 5, 50)
# test1_amount_per_person = test1.split_check
# puts test1_amount_per_person


# $10 initital bill, 5 people, 50% tip => $3 per person
expected1 = 3
test1 = Checksplitter.new(10, 5, 50)
test1_amount_per_person = test1.split_check

if test1_amount_per_person == expected1
  puts "Test ran correctly."
else
  puts "Test 1 failed: got #{test1_amount_per_person}"
  puts "Expected: #{expected1}"
end
