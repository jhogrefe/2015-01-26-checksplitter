require "pry"

class Checksplitter
  def initialize(tmcost, numgroup)
    @total_meal_cost = tmcost1
    @tip1 = 0.15
    @tip2 = customtip
    @number_in_group = numgroup    
  end

  def get_meal_cost
    @total_meal_cost
  end

  def get_number_in_group
    @number_in_group
  end

  def set_standard_tip
    @total_meal_cost * @tip1
  end
end

binding.pry