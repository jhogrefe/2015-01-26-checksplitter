
class Person
  
  attr_accessor :name, :spending_amount
  
  def initialize( name )
    @name = name
    @spending_amount = 0
  end
  
  def spend( amt )
    @spending_amount += amt
  end
  
end


# class Person
#
#   attr_reader :name, :spending_amount
#
#   def initialize(name)
#     # p = Person.new("Batman", 10000)
#     # q = Person.new("Spider-Man")
#     # If value is not given then zero is default.
#
#     @name = name
#     @spending_amount = 0
#
#   end
#
#   def spend(amt)
#     @spending_amount += amt
#
#   end
#
# end