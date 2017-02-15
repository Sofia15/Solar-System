#by Sofia Kim
#Create a Planet class with a name attribute.
#Allow these attributes to be set using a hash in initialize.
#You should be able to instantiate a new Planet object with an associated name.


class Planet
  #getters/setters
  attr_reader :name, :diameter, :distance_from_the_sun, :orbit_period, :human_being_alive

  #when I call .new this will be initialized as a package
  def initialize(planet)
    @name = planet[:name]
    @diameter = planet[:diameter]
    @distance_from_the_sun = planet[:distance_from_the_sun]
    @orbit_period = planet[:orbit_period]
    @human_being_alive = planet[:human_being_alive] #boolean
  end

end

#add a planet method

class SolarSystem

  attr_reader :planets

  def initialize
    @planets = [] #store planets within an array
  end

  def add(planet)  #in parameter no data type needed
    @planets.push(planet)
  end

end

solar_system = SolarSystem.new #add planet into system local variable
solar_system.add(Planet.new(name:"Mercury", diameter:"4879", distance_from_the_sun:"0.39", orbit_period:"88days", human_being_alive:"No" ))
solar_system.add(Planet.new(name:"Venus", diameter:"12104", distance_from_the_sun:"0.73", orbit_period:"225days", human_being_alive:"No"))
solar_system.add(Planet.new(name:"Earth", diameter:"12742", distance_from_the_sun:"1", orbit_period:"365.25days", human_being_alive:"Yes"))
solar_system.add(Planet.new(name:"Mars", diameter:"6779", distance_from_the_sun:"1.38", orbit_period:"1.9years", human_being_alive:"No"))
solar_system.add(Planet.new(name:"Jupiter", diameter:"139822", distance_from_the_sun:"5.20AU", orbit_period:"11.9years", human_being_alive:"No"))

print solar_system.planets
