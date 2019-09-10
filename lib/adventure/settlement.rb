# frozen_string_literal: true

module Adventure
  # Defines and creates a settlement.
  class Settlement
    attr_reader :id, :name, :population, :type, :wealth, :gp_limit
    attr_reader :demographics, :environment, :stores, :houses

    # Creates a new settlement, with all its contents.
    #
    # @param name [String] The name of the Settlement.
    # @param population [Integer] The number of people on the Settlement,
    #   minimum of 20 (less than that and its a large home, not a settlement).
    # @param demographics [Array] An array in which each element must be an
    #   array with two elements, the first a String of the race, the second an
    #   Integer of the rough percentage this race represents. _E.g._:
    #     [
    #       ['humans', 90],
    #       ['halflings', 6],
    #       ['misc', 4]
    #     ]
    # @param environment [String] The environment surrounding the Settlement.
    # @param buildings [Hash] The list of {Building}s of the Settlement, which
    #   must be a Hash with two elements, each with a specific key: _stores_ and
    #   _houses_. Each of this keys must contain an Array of Buildings, or an
    #   empty Array if there are no building of that category on the Settlement.
    def initialize(name, population, demographics, environment, buildings)
      check_params(population, demographics)
      check_name(name)

      @population = population.to_i
      @type, @gp_limit = type_limit
      @wealth = wealth_calc
      @demographics = demographics
      @environment = environment

      check_buildings(buildings)
    end

    # Returns a description of the Settlement.
    #
    # @return [String] A description of the Settlement.
    def short_description
      "#{@name} is a #{@type.downcase} of #{@population} souls, most of which"\
      " are #{predominant_race}. The #{@type.downcase} is in a "\
      "#{@environment.downcase}, with #{@stores.length} stores and "\
      "#{@houses.length} houses of note."
    end

    private

    def type_limit
      if @population < 2001
        small_settlements
      else
        large_settlements
      end
    end

    def small_settlements
      case @population
      when 20..80
        ['Thorp', 40]
      when 81..400
        ['Hamlet', 100]
      when 401..900
        ['Village', 200]
      when 901..2000
        ['Small town', 800]
      end
    end

    def large_settlements
      case @population
      when 2001..5000
        ['Large town', 3000]
      when 5001..12_000
        ['Small city', 15_000]
      when 12_001..25_000
        ['Large city', 40_000]
      else
        ['Metropolis', 100_000]
      end
    end

    def wealth_calc
      ((@gp_limit / 2) * (@population / 10)).to_i
    end

    def predominant_race
      percent = 0
      main_race = ''
      @demographics.each do |pop|
        if pop[1] > percent
          main_race = pop[0]
          percent = pop[1]
        end
      end

      main_race
    end

    def check_params(pop, demo)
      raise ArgumentError, 'Two few people (min 20)' unless pop >= 20
      raise ArgumentError, 'Demographics must be a Hash' unless demo.is_a? Array
    end

    def check_name(name)
      @id = ('settlement-' + name).slugify
      @name = name
    end

    def check_buildings(buildings)
      msg = 'Building must be a Hash with two keys, and arrays under them'
      raise ArgumentError, msg unless buildings.is_a? Hash

      check_building_category('stores', buildings)
      check_building_category('houses', buildings)

      @stores = buildings['stores']
      @houses = buildings['houses']
    end

    def check_building_category(cat, buildings)
      msg = "Building must contain a list of houses under the '#{cat}' key."
      raise ArgumentError, msg unless buildings.key?(cat)

      msg = "Building must contain arrays under the '#{cat}' key."
      raise ArgumentError, msg unless buildings[cat].is_a? Array

      msg = 'Each element of the arrays must be an instance of Building'
      buildings[cat].each do |lot|
        raise ArgumentError, msg unless lot.is_a? Building
      end
    end
  end
end
