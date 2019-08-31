# frozen_string_literal: true

require 'adventure/armor'

# Creates instances of medium SRD armors
module Armors
  @hide_armor = Adventure::Armor.new('Hide',
                                     'Medium',
                                     12,
                                     2,
                                     '10gp',
                                     '12lb.')
  @chain_shirt_armor = Adventure::Armor.new('Chain shirt',
                                            'Medium',
                                            13,
                                            2,
                                            '50gp',
                                            '20lb.',
                                            true)
  @scale_mail_armor = Adventure::Armor.new('Scale mail',
                                           'Medium',
                                           14,
                                           2,
                                           '50gp',
                                           '45lb.',
                                           true)
  @breastplate_armor = Adventure::Armor.new('Breastplate',
                                            'Medium',
                                            14,
                                            2,
                                            '400gp',
                                            '20lb.')
  @half_plate_armor = Adventure::Armor.new('Half plate',
                                           'Medium',
                                           15,
                                           2,
                                           '750gp',
                                           '40lb.',
                                           true)

  def self.hide_armor
    @hide_armor
  end

  def self.chain_shirt_armor
    @chain_shirt_armor
  end

  def self.scale_mail_armor
    @scale_mail_armor
  end

  def self.breastplate_armor
    @breastplate_armor
  end

  def self.half_plate_armor
    @half_plate_armor
  end
end
