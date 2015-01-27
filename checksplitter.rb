require "pry"

class Checksplitter
  def initialize(tmcost, numgroup)
    @total_meal_cost = tmcost
    @number_in_group = numgroup
  end

  def get_meal_cost()
    @total_meal_cost
  end

  def get_number_in_group()
    @number_in_group
  end

  def split_check
    "The split is #{@total_meal_cost / @number_in_group} per person."
  end
  
  def give_tip_standard
    puts "Standard tip is 15 percent."
    puts "The tip would be #{(@total_meal_cost * 0.15)}."
  end
  
  def give_tip_custom
    puts "Enter tip amount: "
    answer = gets.chomp.to_i
    custom_tip = "#{@total_meal_cost} * (#{answer} * 0.01)}"
    puts "The custom tip is #{custom_tip}."
  end
end

binding.pry