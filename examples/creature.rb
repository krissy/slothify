# Run this example: ruby examples/creature.rb
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'slothify'

class Creature
using Slothify

  SUPER_SLOW = 10
  attr_reader :name, :type, :speed

  def initialize(name, type, speed = :average)
    @name = name
    @type = type
    @speed = speed
  end

  def speak(str)
    message = str
    if type == :sloth
      message = (speed == :super_slow ? str.slothify(SUPER_SLOW) : str.slothify)
    end
    puts "#{name} the #{type.to_s}: #{message}"
  end
end

# A thrilling conversation between creatures
farida = Creature.new("Farida", :ferret)
craig = Creature.new("Craig", :sloth, :slow)
senior_steve = Creature.new("Senior Steve", :sloth, :super_slow)

farida.speak("Hello, fast world!")
craig.speak("Hi there.")
senior_steve.speak("Why hello, party people...")

# Output:
# Farida the ferret: Hello, fast world!
# Craig the sloth: Hiiii thereeee.
# Senior Steve the sloth: Whyyyyyyyyyyy hellooooooooooo, partyyyyyyyyyyy peopleeeeeeeeeee...
