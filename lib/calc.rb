class Calc

  attr_accessor :tax

  def initialize
    @tax = 0
  end

  def add(a, b)
    a + b
  end

  def price(price)
    price * (1 + tax)
  end

  def multiple_of_3?(n)
    n % 3 == 0 ? true : false
  end

end
