# frozen_string_literal: true

require 'adventure/weapon'

# Creates instances of martial ranged SRD weapons
module Weapons
  @blowgun = Adventure::Weapon.new('Blowgun',
                                   'Simple Melee',
                                   '1',
                                   'piercing',
                                   '1lb.',
                                   '10gp',
                                   false,
                                   'Ammunition (range 25/100), loading',
                                   true)
  @hand_crossbow = Adventure::Weapon.new('Hand Crossbow',
                                         'Simple Melee',
                                         '1d6',
                                         'piercing',
                                         '3lb.',
                                         '75gp',
                                         false,
                                         'Ammunition (range 30/120), light, '\
                                         'loading',
                                         true)
  @heavy_crossbow = Adventure::Weapon.new('Heavy Crossbow',
                                          'Simple Melee',
                                          '1d10',
                                          'piercing',
                                          '18lb.',
                                          '50gp',
                                          false,
                                          'Ammunition (range 100/400), heavy, '\
                                          'loading, two-handed',
                                          true)
  @longbow = Adventure::Weapon.new('Longbow',
                                   'Simple Melee',
                                   '1d8',
                                   'piercing',
                                   '2lb.',
                                   '50gp',
                                   false,
                                   'Ammunition (range 150/600), heavy, '\
                                   'two-handed',
                                   true)

  def self.blowgun
    @blowgun
  end

  def self.hand_crossbow
    @hand_crossbow
  end

  def self.heavy_crossbow
    @heavy_crossbow
  end

  def self.longbow
    @longbow
  end
end
