class Timer
  attr_accessor :seconds, :minutes, :hours, :time_string

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
    puts seconds
    puts minutes
    puts hours
  end

  def roll_over
    if (@seconds > 60)
      @minutes += @seconds/60
      @seconds = @seconds%60
    end
    if (@minutes > 60)
      @hours += @minutes/60
      @minutes = @minutes%60
    end
    if (@hours > 24)
      @hours = @hours%24
    end
  end

  def to_string(time_unit)
    if (time_unit < 10)
      return "0#{time_unit}"
    else
      return "#{time_unit}"
    end
  end

  def time_string
    roll_over
    seconds_string = to_string(@seconds)
    minutes_string = to_string(@minutes)
    hours_string = to_string(@hours)
    @time_string = "#{hours_string}:#{minutes_string}:#{seconds_string}"
  end

  
end
