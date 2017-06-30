class Cat
  def initialize(name, food, time)
    @cat_name = name
    @preferred_food = food
    @meal_time = time
  end

  def preferred_food
    @preferred_food
  end
  def meal_time
    if @meal_time <= 12
      "#{@meal_time}AM"
    else
      @meal_time = @meal_time -12
      "#{@meal_time}PM"
    end
  end
  def eats_at
    return meal_time
  end
  def meow
    "My name is #{@cat_name} and I eat #{preferred_food} at #{eats_at}"
  end
end
