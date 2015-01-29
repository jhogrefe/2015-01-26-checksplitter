
class Person
  
  attr_reader :name, :spending_amount
  
  def initialize(name, spending_amount=0)
    # p = Person.new("Batman", 10000)
    # q = Person.new("Spider-Man")
    # If value is not given then zero is default.
   
    @name = name
    @spending_amount = 0
    
  end
  
  def spend(amt)
    @spending_amount += amt
    
  end
  
end