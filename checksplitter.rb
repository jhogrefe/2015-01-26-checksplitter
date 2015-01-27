class Checksplitter
  def initialize(tmcost, numgroup, customtip)
    @total_meal_cost = tmcost1
    @tip1 = tmcost * 0.15
    @tip2 = customtip
    @number_in_group = numgroup    
  end

  def get_meal_cost
    @total_meal_cost
  end

  def get_number_in_group
    @number_in_group
  end

  def get_custom_tip
    @tip2
  end
end