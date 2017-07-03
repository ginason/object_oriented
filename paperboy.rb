class Paperboy
  def initialize(name)
    @paperboy=name
    @number_of_papaer=0
    @quota = 0
    @experience=0
    @money=0
    @earnings =0
  end
  def quota
    @quota = 50 + @number_of_papaer/2
  end

  def deliver(start_address, end_address)
    @number_of_papaer = end_address - start_address + 1
    if @number_of_papaer > @quota
      @money=(@number_of_papaer - @quota)*0.5 + @quota * 0.25
    elsif @number_of_papaer < @quota
      @money=@number_of_papaer*0.25 - 2
    end
    @experience += @number_of_papaer
  end
  def earnings
    @earnings = @money + @earnings
  end
  def report
    puts "I'm #{@paperboy}, I've delivered #{@experience} and I've earned #{@earnings} so far!"
  end

end
