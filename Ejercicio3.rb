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
  attr_reader :model, :year, :start
  @@cantidad = 0
  def initialize(model, year)
    super(model, year)
    @@cantidad += 1
  end
  def engine_start
    super
    puts 'el motor se ha encendido'
  end
  def self.cantidad
    @@cantidad
  end
end
modelos = ['swift','maruti','lada','v16']
autos = []

10.times do
  autos << Car.new(modelos.sample,rand(1990..2018))
end

puts Car.cantidad
