require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(args)
    args = defaults.merge(args)
    @id      = args[:id]
    @color   = args[:color]
    @price   = args[:price]
    @weight  = args[:weight]
    @luggage = args[:luggage]
  end

  def defaults
    {:id => nil, :color => nil, :price => nil, :weight => STANDARD_WEIGHT,
      :luggage => nil}
  end

  def add(item)
    @luggage.add(item)
  end

  def price
    return nil unless @price and @weight
    base_price = ((@price + 2) * weight) + 2
    if luggage
      base_price *= luggage.weight
    end
    base_price
  end

  def weight
    return nil unless @weight
    if luggage
      @weight + luggage.count
    else
      @weight
    end
  end

end
