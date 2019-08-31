# frozen_string_literal: true

require 'adventure/weapon'

# Creates instances of simple ranged SRD weapons
module Weapons
  @light_crossbow = Adventure::Weapon.new('Light Crossbow',
                                          'Simple Ranged',
                                          '1d8',
                                          'piercing',
                                          '5lb.',
                                          '25gp',
                                          false,
                                          'Ammunition (range 80/320), loading,'\
                                          ' two-handed',
                                          true)
  @dart = Adventure::Weapon.new('Dart',
                                'Simple Ranged',
                                '1d4',
                                'piercing',
                                '1/4lb.',
                                '5sp',
                                true,
                                'Finesse, thrown (range 20/60)',
                                true)
  @shortbow = Adventure::Weapon.new('Shortbow',
                                    'Simple Ranged',
                                    '1d6',
                                    'piercing',
                                    '2lb.',
                                    '1gp',
                                    false,
                                    'Ammunition (range 80/320),two-handed',
                                    true)
  @sling = Adventure::Weapon.new('Sling',
                                 'Simple Ranged',
                                 '1d4',
                                 'bludgeoning',
                                 '-',
                                 '-',
                                 false,
                                 'Ammunition (range 30/120)',
                                 true)

  def self.light_crossbow
    @light_crossbow
  end

  def self.dart
    @dart
  end

  def self.shortbow
    @shortbow
  end

  def self.sling
    @sling
  end
end
