class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  attr_reader :model, :year
  @@cantidad = 0
  def initialize(model, year)
    super(model, year)
    @@cantidad += 1
  end
  def enginer_start
    super.engine_start
  end
  def self.cantidad
    @@cantidad
  end
end
