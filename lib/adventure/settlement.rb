# frozen_string_literal: true

module Adventure
  # Defines and creates a settlement.
  class Settlement
    attr_reader :name, :population, :type, :wealth, :gp_limit, :demographics
    attr_reader :environment, :stores, :taverns, :houses

    def initialize(name, population, demographics, environment)
      check_params(population, demographics)

      @name = name
      @population = population.to_i
      @type, @gp_limit = type_limit
      @wealth = wealth_calc
      @demographics = demographics
      @environment = environment

      # @todo Update buildings' generators
      # @body Once the classes are developed, update these to their generators.
      @stores = []
      @taverns = []
      @houses = []
    end

    def short_description
      "#{@name} is a #{@type.downcase} of #{@population} souls, most of which"\
      " are #{predominant_race}. The #{@type.downcase} is in a "\
      "#{@environment.downcase}, with #{@stores.length} stores, "\
      "#{@taverns.length} taverns and #{@houses.length} houses of note."
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
  end
end
