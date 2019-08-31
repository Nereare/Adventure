# frozen_string_literal: true

require 'adventure/armor'

# Creates instances of heavy SRD armors
module Armors
  @ring_mail_armor = Adventure::Armor.new('Ring mail',
                                          'Heavy',
                                          14,
                                          0,
                                          '30gp',
                                          '40lb.',
                                          true)
  @chain_mail_armor = Adventure::Armor.new('Chain mail',
                                           'Heavy',
                                           16,
                                           0,
                                           '75gp',
                                           '55lb.',
                                           true)
  @splint_armor = Adventure::Armor.new('Splint',
                                       'Heavy',
                                       17,
                                       0,
                                       '200gp',
                                       '60lb.',
                                       true)
  @plate_armor = Adventure::Armor.new('Plate',
                                      'Heavy',
                                      18,
                                      0,
                                      '1500gp',
                                      '65lb.',
                                      true)

  def self.ring_mail_armor
    @ring_mail_armor
  end

  def self.chain_mail_armor
    @chain_mail_armor
  end

  def self.splint_armor
    @splint_armor
  end

  def self.plate_armor
    @plate_armor
  end
end
