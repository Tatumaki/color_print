require "color_print/version"

class Color
  LIST = {red: "\e[31m",
          green: "\e[32m",
          yellow: "\e[33m",
          blue: "\e[34m",
          magenta: "\e[35m",
          cyan: "\e[36m",
          white: "\e[37m"}

  def self.set(color)
    print LIST[color.to_sym]
    yield
    print LIST[:white]
  end

  def self.red(string=nil)
    return LIST[:red] if string.nil?
    return LIST[:red] + string.to_s+ LIST[:white]
  end
  def self.green(string=nil)
    return LIST[:green] if string.nil?
    return LIST[:green] + string.to_s+ LIST[:white]
  end
  def self.yellow(string=nil)
    return LIST[:yellow] if string.nil?
    return LIST[:yellow] + string.to_s+ LIST[:white]
  end
  def self.blue(string=nil)
    return LIST[:blue] if string.nil?
    return LIST[:blue] + string.to_s+ LIST[:white]
  end
  def self.magenta(string=nil)
    return LIST[:magenta] if string.nil?
    return LIST[:magenta] + string.to_s+ LIST[:white]
  end
  def self.cyan(string=nil)
    return LIST[:cyan] if string.nil?
    return LIST[:cyan] + string.to_s+ LIST[:white]
  end
  def self.white(string=nil)
    return LIST[:white] if string.nil?
    return LIST[:white] + string.to_s+ LIST[:white]
  end
  
  def self.fullcolor(string=nil,color=256)
    return "\033[38;5;#{color}m" if string.nil?
    return "\033[38;5;#{color}m" + string.to_s + LIST[:white]
  end

  def self.reset
    print "\033[0m}]"
  end

  def self.random(string=nil)
    color = rand(1..256)
    return fullcolor(string,color)
  end

  def self.colorful(string=nil)
    return unless string
    buf = String.new
    string.each_char do |c|
      buf << random(c)
    end
    return buf
  end

end

if __FILE__ == $0
  Color.set(:red) do
    puts :any
    puts :line
    puts :will
    puts :colored
  end
  puts "in block"

  puts Color.colorful("colorful!!!!")
  puts Color.colorful("colorful!!!!")
  puts Color.colorful("colorful!!!!")
  puts Color.colorful("colorful!!!!")

  for x in 1..256 do
    print Color.fullcolor(sprintf("%03d ",x),x)
    if x == 15
      puts ""
      next
    end
    puts "" if (x-15) % 36 == 0 
  end
  puts ""

end
