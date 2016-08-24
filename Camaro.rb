class Car
  @@current_speed = 0
  @@brand = "unknown"
  @@max_speed = 0
  
  def accelerate(brand,max_speed)
    for $current_speed in 0..max_speed
      if $current_speed < max_speed
        puts "#{$current_speed}"
      end
    end
    puts "#{brand} reached max speed."
  end
  
  def drive()
    accelerate()
  end
end

class Camaro < Car
  class << self; attr_accessor :brand,:max_speed end
  @brand = "Chevy"
  @max_speed = 200
end

car1=Camaro.new
car1.accelerate(Camaro.brand,Camaro.max_speed)

