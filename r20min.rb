class MegaGreeter
  attr_accessor :m_names

  # Create the object
  def initialize(names = "World")
    m_names = names
  end

  # Say hi to everybody
  def say_hi
    if m_names.nil?
      puts "..."
    elsif m_names.respond_to?("each")
      # m_names is a list of some kind, iterate!
      m_names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{m_names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if m_names.nil?
      puts "..."
    elsif m_names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{m_names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{m_names}.  Come back soon!"
    end
  end
end


if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.m_names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.m_names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.m_names = nil
  mg.say_hi
  mg.say_bye
end
