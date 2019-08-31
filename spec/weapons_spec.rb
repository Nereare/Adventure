# frozen_string_literal: true

require 'adventure'
require 'weapons'

RSpec.describe Weapons do
  # Martial Melee Weapons - Part 1
  it 'has a battleaxe' do
    expect(Weapons.battleaxe).to be_a(Adventure::Weapon)
  end

  it 'has a flail' do
    expect(Weapons.flail).to be_a(Adventure::Weapon)
  end

  it 'has a glaive' do
    expect(Weapons.glaive).to be_a(Adventure::Weapon)
  end

  it 'has a greataxe' do
    expect(Weapons.greataxe).to be_a(Adventure::Weapon)
  end

  it 'has a greatsword' do
    expect(Weapons.greatsword).to be_a(Adventure::Weapon)
  end

  it 'has a halberd' do
    expect(Weapons.halberd).to be_a(Adventure::Weapon)
  end

  it 'has a lance' do
    expect(Weapons.lance).to be_a(Adventure::Weapon)
  end

  it 'has a longsword' do
    expect(Weapons.longsword).to be_a(Adventure::Weapon)
  end
end

RSpec.describe Weapons do
  # Martial Melee Weapons - Part 2
  it 'has a maul' do
    expect(Weapons.maul).to be_a(Adventure::Weapon)
  end

  it 'has a morningstar' do
    expect(Weapons.morningstar).to be_a(Adventure::Weapon)
  end

  it 'has a pike' do
    expect(Weapons.pike).to be_a(Adventure::Weapon)
  end

  it 'has a rapier' do
    expect(Weapons.rapier).to be_a(Adventure::Weapon)
  end

  it 'has a scimitar' do
    expect(Weapons.scimitar).to be_a(Adventure::Weapon)
  end

  it 'has a shortsword' do
    expect(Weapons.shortsword).to be_a(Adventure::Weapon)
  end

  it 'has a trident' do
    expect(Weapons.trident).to be_a(Adventure::Weapon)
  end

  it 'has a war pick' do
    expect(Weapons.war_pick).to be_a(Adventure::Weapon)
  end
end

RSpec.describe Weapons do
  # Martial Melee Weapons - Part 3
  it 'has a warhammer' do
    expect(Weapons.warhammer).to be_a(Adventure::Weapon)
  end

  it 'has a whip' do
    expect(Weapons.whip).to be_a(Adventure::Weapon)
  end

  # Martial Ranged Weapons
  it 'has a blowgun' do
    expect(Weapons.blowgun).to be_a(Adventure::Weapon)
  end

  it 'has a hand crossbow' do
    expect(Weapons.hand_crossbow).to be_a(Adventure::Weapon)
  end

  it 'has a heavy crossbow' do
    expect(Weapons.heavy_crossbow).to be_a(Adventure::Weapon)
  end

  it 'has a longbow' do
    expect(Weapons.longbow).to be_a(Adventure::Weapon)
  end
end

RSpec.describe Weapons do
  # Simple Melee Weapons - Part 1
  it 'has a club' do
    expect(Weapons.club).to be_a(Adventure::Weapon)
  end

  it 'has a dagger' do
    expect(Weapons.dagger).to be_a(Adventure::Weapon)
  end

  it 'has a greatclub' do
    expect(Weapons.greatclub).to be_a(Adventure::Weapon)
  end

  it 'has a handaxe' do
    expect(Weapons.handaxe).to be_a(Adventure::Weapon)
  end

  it 'has a javelin' do
    expect(Weapons.javelin).to be_a(Adventure::Weapon)
  end

  it 'has a light hammer' do
    expect(Weapons.light_hammer).to be_a(Adventure::Weapon)
  end

  it 'has a mace' do
    expect(Weapons.mace).to be_a(Adventure::Weapon)
  end

  it 'has a quarterstaff' do
    expect(Weapons.quarterstaff).to be_a(Adventure::Weapon)
  end
end

RSpec.describe Weapons do
  # Simple Melee Weapons - Part 2
  it 'has a sickle' do
    expect(Weapons.sickle).to be_a(Adventure::Weapon)
  end

  it 'has a spear' do
    expect(Weapons.spear).to be_a(Adventure::Weapon)
  end

  # Simple Ranged Weapons
  it 'has a light crossbow' do
    expect(Weapons.light_crossbow).to be_a(Adventure::Weapon)
  end

  it 'has a dart' do
    expect(Weapons.dart).to be_a(Adventure::Weapon)
  end

  it 'has a shortbow' do
    expect(Weapons.shortbow).to be_a(Adventure::Weapon)
  end

  it 'has a sling' do
    expect(Weapons.sling).to be_a(Adventure::Weapon)
  end
end
