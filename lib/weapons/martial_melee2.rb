# frozen_string_literal: true

require 'adventure/weapon'

# Creates instances of martal melee SRD weapons
module Weapons
  @morningstar = Adventure::Weapon.new('Morningstar',
                                       'Martial Melee',
                                       '1d8',
                                       'piercing',
                                       '4lb.',
                                       '15gp',
                                       false,
                                       '')
  @pike = Adventure::Weapon.new('Pike',
                                'Martial Melee',
                                '1d6',
                                'piercing',
                                '18lb.',
                                '5gp',
                                false,
                                'Heavy, reach, two-handed')
  @rapier = Adventure::Weapon.new('Rapier',
                                  'Martial Melee',
                                  '1d6',
                                  'piercing',
                                  '2lb.',
                                  '25gp',
                                  true,
                                  'Finesse')
  @scimitar = Adventure::Weapon.new('Scimitar',
                                    'Martial Melee',
                                    '1d6',
                                    'slashing',
                                    '3lb.',
                                    '25gp',
                                    true,
                                    'Finesse, light')
  @shortsword = Adventure::Weapon.new('Shortsword',
                                      'Martial Melee',
                                      '1d4',
                                      'piercing',
                                      '2lb.',
                                      '10gp',
                                      true,
                                      'Finesse, light')
  @trident = Adventure::Weapon.new('Trident',
                                   'Martial Melee',
                                   '1d8',
                                   'piercing',
                                   '4lb.',
                                   '5gp',
                                   false,
                                   'Thrown (range 20/60), versatile (1d8)')
  @war_pick = Adventure::Weapon.new('War pick',
                                    'Martial Melee',
                                    '1d8',
                                    'piercing',
                                    '2lb.',
                                    '5gp',
                                    false,
                                    '')
  @warhammer = Adventure::Weapon.new('Warhammer',
                                     'Martial Melee',
                                     '1d8',
                                     'bludgeoning',
                                     '2lb.',
                                     '15gp',
                                     false,
                                     'Versatile (1d10)')
  @whip = Adventure::Weapon.new('Whip',
                                'Martial Melee',
                                '1d4',
                                'slashing',
                                '3lb.',
                                '2gp',
                                true,
                                'Finesse, reach')

  def self.morningstar
    @morningstar
  end

  def self.pike
    @pike
  end

  def self.rapier
    @rapier
  end

  def self.scimitar
    @scimitar
  end

  def self.shortsword
    @shortsword
  end

  def self.trident
    @trident
  end

  def self.war_pick
    @war_pick
  end

  def self.warhammer
    @warhammer
  end

  def self.whip
    @whip
  end
end
