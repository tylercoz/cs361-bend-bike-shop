# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :pannier

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @pannier = Pannier.new
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    pannier.add(item)
  end

  def remove_cargo(item)
    pannier.remove(item)
  end

  def pannier_capacity
    pannier.capacity
  end

  def pannier_remaining_capacity
    pannier.remaining_capacity
  end

end

class Pannier
  attr_accessor :contents, :max_items
  private :max_items, :max_items= #Read value via `.capacity()`

  def initialize
    @contents = []
    @max_items = 10
  end

  def add(item)
    contents << item
  end

  def remove(item)
    contents.remove(item)
  end

  def capacity
    max_items
  end

  def remaining_capacity
    capacity - contents.size
  end

end
