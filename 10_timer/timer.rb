class Timer
  attr_accessor :seconds

  def initialize (seconds = 0)
    @seconds = seconds
  end
  
  def time_string
    hh = (@seconds / 3600).floor.to_s.rjust(2, "0")
    @seconds %= 3600
    mm = (@seconds / 60).floor.to_s.rjust(2, "0")
    ss = (@seconds % 60).to_s.rjust(2, "0")

    "#{hh}:#{mm}:#{ss}"
  end
  
end  