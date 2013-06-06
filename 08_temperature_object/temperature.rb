class Temperature

  def initialize(option)
    if option.has_key? :f
      @fahrenheit = option[:f]
      @celsius = (@fahrenheit - 32).to_f * (5.0 / 9.0)
    elsif option.has_key? :c
      @celsius = option[:c]
      @fahrenheit = @celsius * (9.0/5.0) + 32
    end
  end

  def self.from_celsius(in_celsius)
    Temperature.new({:c => in_celsius})
  end

  def self.from_fahrenheit(in_fahrenheit)
    Temperature.new({:f => in_fahrenheit})
  end


  def in_fahrenheit
    @fahrenheit
  end
  def in_celsius
    @celsius
  end
end

class Celsius < Temperature
  def initialize(in_celsius)
    super({:c => in_celsius})
  end
end

class Fahrenheit < Temperature
  def initialize(in_fahrenheit)
    super({:f => in_fahrenheit})
  end
end