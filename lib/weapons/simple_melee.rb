# frozen_string_literal: true

require 'adventure/weapon'

# Creates instances of simple melee SRD weapons
module Weapons
  @club = Adventure::Weapon.new('Club',
                                'Simple Melee',
                                '1d4',
                                'bludgeoning',
                                '2lb.',
                                '1sp',
                                false,
                                'Light')
  @dagger = Adventure::Weapon.new('Dagger',
                                  'Simple Melee',
                                  '1d4',
                                  'piercing',
                                  '1lb.',
                                  '2gp',
                                  true,
                                  'Finesse, light, thrown (range 20/60)')
  @greatclub = Adventure::Weapon.new('Greatclub',
                                     'Simple Melee',
                                     '1d8',
                                     'bludgeoning',
                                     '10lb.',
                                     '2sp',
                                     false,
                                     'Two-handed')
  @handaxe = Adventure::Weapon.new('Handaxe',
                                   'Simple Melee',
                                   '1d6',
                                   'slashing',
                                   '2lb.',
                                   '5gp',
                                   false,
                                   'Light, thrown (range 20/60)')
  @javelin = Adventure::Weapon.new('Javelin',
                                   'Simple Melee',
                                   '1d6',
                                   'piercing',
                                   '2lb.',
                                   '5sp',
                                   false,
                                   'Thrown (range 30/120)')
  @light_hammer = Adventure::Weapon.new('Light Hammer',
                                        'Simple Melee',
                                        '1d4',
                                        'bludgeoning',
                                        '2lb.',
                                        '2gp',
                                        false,
                                        'Light, thrown (range 20/60)')
  @mace = Adventure::Weapon.new('Mace',
                                'Simple Melee',
                                '1d6',
                                'bludgeoning',
                                '4lb.',
                                '5gp',
                                false,
                                '')
  @quarterstaff = Adventure::Weapon.new('Quarterstaff',
                                        'Simple Melee',
                                        '1d6',
                                        'bludgeoning',
                                        '4lb.',
                                        '2sp',
                                        false,
                                        'Versatile (1d8)')
  @sickle = Adventure::Weapon.new('Sickle',
                                  'Simple Melee',
                                  '1d4',
                                  'slashing',
                                  '2lb.',
                                  '1gp',
                                  false,
                                  'Light')
  @spear = Adventure::Weapon.new('Spear',
                                 'Simple Melee',
                                 '1d6',
                                 'piercing',
                                 '3lb.',
                                 '1gp',
                                 false,
                                 'Thrown (range 20/60), versatile (1d8)')

  def self.club
    @club
  end

  def self.dagger
    @dagger
  end

  def self.greatclub
    @greatclub
  end

  def self.handaxe
    @handaxe
  end

  def self.javelin
    @javelin
  end

  def self.light_hammer
    @light_hammer
  end

  def self.mace
    @mace
  end

  def self.quarterstaff
    @quarterstaff
  end

  def self.sickle
    @sickle
  end

  def self.spear
    @spear
  end
end
