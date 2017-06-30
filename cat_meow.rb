class Cat

  @@noise = "MEOW" # Class Variable (piece of data)
  def self.make_noise # Class Method (piece of behaviour)
    @@noise
  end

  def initialize(name, food, time)
    @cat_name = name
    @preferred_food = food
    @meal_time = time
  end

  # def cat_name=(new_name)
  #   @cat_name = new_name
  # end
  # is exact same as...
  # attr_writer :cat_name

  def preferred_food
    @preferred_food
  end
  def meal_time
    if @meal_time <= 12
      "#{@meal_time}AM"
    else
      display_time = @meal_time - 12
      "#{display_time}PM"
    end
  end
  def eats_at
    return meal_time
  end
  def meow
    "My name is #{@cat_name} and I eat #{preferred_food} at #{eats_at}"
  end
end

bubbles = Cat.new('Bubbles', 'Fish', 18)

taco = Cat.new('Taco', 'kibble', 15)

# taco.make_noise
# bubbles.make_noise
#
# Cat.make_noise
#
#
#
#  = Struct.new(:attr_names) do
#    def method_name
#
#    end
#
#
#  end
