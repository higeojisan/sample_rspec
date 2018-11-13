class Calc

  def initialize(logger)
    @logger = logger
  end

  #def add(a, b, name)
  #  (a + b).to_s + " by #{name}"
  #end

  def add(a, b)
    @logger.log
    a + b
  end

  def price(price)
    price * (1 + tax)
  end

  def multiple_of_3?(n)
    n % 3 == 0 ? true : false
  end

end
