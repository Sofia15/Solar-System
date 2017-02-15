#local variables will point to the planet objects
Mercury = Planet.new("Mercury", "4879", "0.39", "88days", "No" )
Venus = Planet.new("Venus", "12104", "0.73", "225days", "No")
Earth = Planet.new("Earth", "12742", "1", "365.25days", "Yes")
Mars = Planet.new("Mars", "6779", "1.38", "1.9years", "No")
Jupiter = Planet.new("Jupiter", "139822", "5.20AU", "11.9years", "No")

# puts Mercury.diameter
# puts Venus.diameter
# puts Mars.distance_from_the_sun
#puts Mercury.human_being_alive

continue = true
while continue
planets = [Mercury, Venus, Earth, Mars, Jupiter]
puts "input numbers accoring to planet that you are interested in 1-Mercury, 2-Venus, 3-Earth, 4-Mars, 5-Jupiter!"

user_input = gets.chomp.to_i
planet = planets[user_input-1] #user input is saved in planet
puts "The name of planet is #{planet.name}, diameter of #{planet.diameter}km, #{planet.distance_from_the_sun}AU, with #{planet.orbit_period}days of orbit period. Can we live there?:#{planet.human_being_alive} "

puts "Would you like to explore anothe planet(y/n)?"
ans = gets.chomp
if ans == "n"
  continue = false
end
end
#set up array of planets
#add a planet method

class SolarSystem

  attr_reader :planets

  def initialize
    @planets = [] #store planets within an array
  end

  def add(planet)  #in parameter no data type needed
    @planets.push(planet)
  end

  def print_names
    @planets.each do |planet|
      puts planet.name
    end
  end
end

solar_system = SolarSystem.new #add planet into system local variable
solar_system.add(Venus)
solar_system.add(Mercury)
solar_system.add(Mars)
# print solar_system.planets #to view the element of @planets array instane varaible
solar_system.print_names
