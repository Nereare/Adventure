# frozen_string_literal: true

require 'marky_markov'

module NameGen
  # Creates dictionaries for marky_markov gem.
  class Dictionaries
    def initialize(_races = @races, _genders = @genders)
      @races = %w[dragonborns dwarves elves gnomes half_elves half_orcs
                  halflings humans tieflings]
      @genders = %w[female male neutral]

      build(@races, @genders)
    end

    private

    def build(races, genders)
      races.each do |race|
        genders.each do |gender|
          MarkyMarkov::Dictionary.delete_dictionary!(
            "lib/namegen/#{gender}_#{race}"
          )
          dict = MarkyMarkov::Dictionary.new("lib/namegen/#{gender}_#{race}")
          dict.parse_file("lib/namegen/#{gender}_#{race}.txt")
          dict.save_dictionary!
        end
      end
    end
  end
end
