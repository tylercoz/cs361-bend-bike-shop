class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(args)
    @capacity = args[:capacity] || DEFAULT_MAX_CAPACITY
    @items = args[:items] || []
  end

  def add(item)
    @items << item
  end

  def weight
    @items.size * 10
  end

  def count
    @items.count
  end

end
