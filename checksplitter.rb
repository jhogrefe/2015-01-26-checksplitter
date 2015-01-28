require "pry"


# Public: #Checksplitter
# A class to determine how much each person in a group
# owes based on the total bill, and how much tip to give
# (both standard 15% and a custom tip amount).
#
# Params:
# total_meal_cost - total_cost: gets total cost of meal.
# number_in_group - num_in_group: gets number of people
#                   in group.
#
# Returns:
# split_check:       returns how much each person in the group
#                    should pay.
# give_tip_standard: returns how much tip is owed (15%).
# give_tip_custom:   asks for custom amount and returns how
#                    much tip is owed.
#
# State Changes:
# None.

class Checksplitter

  attr_accessor :total_meal_cost, :number_in_group
  
  # Public: #initialize
  # Initializes the @total_meal_cost and @number_in_group
  # attributes in the Checksplitter class.
  #
  # Params:
  # total_cost   - total cost of meal.
  # num_in_group - number of people in the group.
  #
  # Returns:
  # None.
  #
  # State Changes:
  # None.
  
  def initialize(total_cost, num_in_group)
    @total_meal_cost = total_cost
    @number_in_group = num_in_group
  end
  
  # Public: #split_check
  # A method that divides the total cost of the meal
  # by the number of people in the group.
  #
  # Params:
  # @total_meal_cost - value of the total meal cost.
  # @number_in_group - value of the number of people in
  #                    the group.
  #
  # Returns:
  # Integer: the amount each person owes for the meal.
  #
  # State Changes:
  # None.
  
  def split_check
    @total_meal_cost / @number_in_group
  end
  
  # Public: #give_tip_standard
  # A method that multiplies the total cost of the meal
  # by the float value of 15%.
  #
  # Params:
  # @total_meal_cost - value of the total meal cost.
  # 0.15             - value of standard tip of 15%.
  #
  # Returns:
  # Integer: the amount owed for the tip for the 
  #          standard tip value of 15%.
  #
  # State Changes:
  # None.  
  
  def give_tip_standard
    @total_meal_cost * 0.15
  end

  # Public: #give_tip_custom
  # A method that asks for a custom tip value and then
  # multiplies the total cost of the meal by that value
  # when converted to a float.
  #
  # Params:
  # answer           - gets the custom tip amount and converts the
  #                    value to an integer.
  # @total_meal_cost - value of the total meal cost.
  # 0.01             - convert percentage integer to float.
  #
  # Returns:
  # Integer: the amount owed for the tip for the 
  #          custom tip value.
  #
  # State Changes:
  # None.  
  
  def give_tip_custom
    puts "Enter tip amount: "
    answer = gets.chomp.to_i
    @total_meal_cost * answer * 0.01
  end

end

binding.pry