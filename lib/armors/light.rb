# frozen_string_literal: true

require 'adventure/armor'

# Creates instances of light SRD armors
module Armors
  @padded_armor = Adventure::Armor.new('Padded',
                                       'Light',
                                       11,
                                       10,
                                       '5gp',
                                       '8lb.',
                                       true)
  @leather_armor = Adventure::Armor.new('Leather',
                                        'Light',
                                        11,
                                        10,
                                        '10gp',
                                        '10lb.')
  @studded_leather_armor = Adventure::Armor.new('Studded leather',
                                                'Light',
                                                12,
                                                10,
                                                '45gp',
                                                '13lb.')

  def self.padded_armor
    @padded_armor
  end

  def self.leather_armor
    @leather_armor
  end

  def self.studded_leather_armor
    @studded_leather_armor
  end
end
