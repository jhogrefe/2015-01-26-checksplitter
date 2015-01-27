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
end

binding.pry