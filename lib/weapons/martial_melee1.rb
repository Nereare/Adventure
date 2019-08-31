# frozen_string_literal: true

require 'adventure/weapon'

# Creates instances of martal melee SRD weapons
module Weapons
  @battleaxe = Adventure::Weapon.new('Battleaxe',
                                     'Martial Melee',
                                     '1d8',
                                     'slashing',
                                     '4lb.',
                                     '10gp',
                                     false,
                                     'Versatile (1d10)')
  @flail = Adventure::Weapon.new('Flail',
                                 'Martial Melee',
                                 '1d8',
                                 'bludgeoning',
                                 '2lb.',
                                 '10gp',
                                 false,
                                 '')
  @glaive = Adventure::Weapon.new('Glaive',
                                  'Martial Melee',
                                  '1d10',
                                  'slashing',
                                  '6lb.',
                                  '20gp',
                                  false,
                                  'Heavy, reach, two-handed')
  @greataxe = Adventure::Weapon.new('Greataxe',
                                    'Martial Melee',
                                    '1d12',
                                    'slashing',
                                    '7lb.',
                                    '30gp',
                                    false,
                                    'Heavy, two-handed')
  @greatsword = Adventure::Weapon.new('Greatsword',
                                      'Martial Melee',
                                      '2d6',
                                      'slashing',
                                      '6lb.',
                                      '50gp',
                                      false,
                                      'Heavy, two-handed')
  @halberd = Adventure::Weapon.new('Halberd',
                                   'Martial Melee',
                                   '1d10',
                                   'slashing',
                                   '6lb.',
                                   '20gp',
                                   false,
                                   'Heavy, reach, two-handed')
  @lance = Adventure::Weapon.new('Lance',
                                 'Martial Melee',
                                 '1d12',
                                 'piercing',
                                 '6lb.',
                                 '10gp',
                                 false,
                                 'Reach, disadvantage when you use a lance to '\
                                 'attack a target within 5 feet of you')
  @longsword = Adventure::Weapon.new('Longsword',
                                     'Martial Melee',
                                     '1d8',
                                     'slashing',
                                     '3lb.',
                                     '15gp',
                                     false,
                                     'Versatile (1d10)')
  @maul = Adventure::Weapon.new('Maul',
                                'Martial Melee',
                                '2d6',
                                'bludgeoning',
                                '10lb.',
                                '10gp',
                                false,
                                'Heavy, two-handed')

  def self.battleaxe
    @battleaxe
  end

  def self.flail
    @flail
  end

  def self.glaive
    @glaive
  end

  def self.greataxe
    @greataxe
  end

  def self.greatsword
    @greatsword
  end

  def self.halberd
    @halberd
  end

  def self.lance
    @lance
  end

  def self.longsword
    @longsword
  end

  def self.maul
    @maul
  end
end
