require "pry"

# Public: #DinnerClub
# A class to store member names of the Dinner Club and
# the amounts they paid
# Params:
#
# Returns:
#
# State Changes:
# None.


class DiningClub

  def initialize
    @members = {}
  end
  
  def add_member(member)
    @members[member] = Person.new(member) #Now calling on object
    @members #returns members
  end
  
  def show_members
    @members.each do |member, objs|
      puts member
    end
    @members
  end
  
  def remove_memmber(member)
    @members.delete(member)
    @members
  end
  
  def have_an_outing(total, tip, *diners)
    cs = Checksplitter.new(total, tip, diners.length)
    amount_per_person = cs.split_check
    
    diners.each do |diner|
      if @members.include?(diner)
        @members[diner].spend(amount_per_person) 
        #.spend is from new Person class, not this particular method.
        #another way of writing this is:
        #p = @members[diner]
        #p.spend(amount_per_person)
      else
        add_member(diner)
        @members[diner].spend(amount_per_person)
      end
    end
    @members #you can return more than one thing in Ruby
  end
  
  def get_spending_report(member)
    @members[member]
  end
  
end
  
      



# Public: Initialize
# Sets initial values for Checksplitter object.
#
# Params:
# + total_meal_cost - total_cost: gets total cost of meal.
# + number_in_group - num_in_group: gets number of people
#                     in group.
# + tip             - integer, percentage to tip, e.g. 15% => 15
#
# Returns:
# nil
#
# State Changes:
# Sets the three primary .

class Checksplitter

  attr_accessor :total_meal_cost, :number_in_group, :tip
  
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
  
  def initialize(total_meal_cost, number_in_group, tip)
    @total_meal_cost = total_meal_cost
    @number_in_group = number_in_group
    @tip = tip * 0.01
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
    temp_total = (@total_meal_cost * (1 + @tip)) / @number_in_group
    temp_total.ceil.to_i
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
    tip_standard = @total_meal_cost * 0.15
    tip_standard
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
  
  ## OLD CRAPPY METHOD ##
  # def give_tip_custom
  #   puts "Enter tip amount: "
  #   answer = gets.chomp.to_i
  #   @total_meal_cost * answer * 0.01
  # end

  def give_tip_custom
    tip_custom = @total_meal_cost * @tip
    tip_custom
  end

end

binding.pry