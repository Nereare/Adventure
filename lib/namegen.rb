# frozen_string_literal: true

require 'marky_markov'
require 'namegen/dictionaries'

module NameGen
  # Creates names for fantasy creatures.
  class NameGen
    attr_reader :dict

    def initialize
      races = %w[dragonborns dwarves elves gnomes half_elves half_orcs
                 halflings humans tieflings]
      genders = %w[female male neutral]

      # Creates the dictionaries' files
      Dictionaries.new
      # Loads dictionaries
      @dict = load_dictionaires(races, genders)
    end

    # Generates a name.
    #
    # @param  gender  Key Either `:female`, `:male` or `:neutral` (default)
    # @param  length  Integer The number of word in the name (default to 2)
    # @return String  A dragonborn name
    def generate(race, gender = 'neutral', length = 2)
      @dict[race][gender].generate_n_words length.to_i
    end

    private

    def load_dictionaires(races, genders)
      dict = {}

      races.each do |race|
        dict[race] = {}
        genders.each do |gender|
          dict[race][gender] = MarkyMarkov::Dictionary.new(
            "lib/namegen/#{gender}_#{race}"
          )
        end
      end

      dict
    end
  end
end
