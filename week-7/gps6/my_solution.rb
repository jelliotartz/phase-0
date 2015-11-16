
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Require relative searches for ruby files (such as spec scripts) in same directory as the current ruby file. Require searches all files on "the system".


# Release 3

require_relative 'state_data'

class VirusPredictor

  # We are initializing the class VirusPredictor, with state, population density, and population. We set these to instance variables, and take them in as arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # We are declaring a new method, within virus_effects, predicted_deaths, which takes 3 instance variables as arguments. This method is defined in a separate method. speed_of_spread takes the same form: it's defined in a separate method, and takes 2 instance variables as arguments.


  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  #Restricts visibility and access for security purposes


private

  #Defining method that accepts 3 arguments. There is a conditional statement; population density. Depending on population density, number of deaths will be calculated by multiplying population density based on a float and rounding down the float to the nearest integer. We then output a statement summarizing results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 0..50 then (@population * 0.05).floor
    when 50..100 then (@population * 0.1).floor
    when 100..150 then (@population * 0.2).floor
    when 150..200 then (@population * 0.3).floor
    else (@population * 0.4).floor
    end
  end



  #This method accepts 2 arguments as parameters. We defined the variable speed with an initial value of 0.0 and then based on a conditional, we increase speeds value by a certain number based on population density. Result gets outputted.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    case @population_density
    when 0..50 then 2.5
    when 50..100 then 2
    when 100..150 then 1.5
    when 150..200 then 1
    else 0.5
    end
  end
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

STATE_DATA.each do |state, state_data|
  VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects
end



#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section#







=begin

# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

=end


