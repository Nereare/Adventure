# frozen_string_literal: true

require 'Adventure'

RSpec.describe Adventure do
  it 'has a version number' do
    expect(Adventure.version).not_to be nil
  end
end

RSpec.describe Adventure::Armor do
  it 'defines armors' do
    armor = Adventure::Armor.new('Test Armor',
                                 'Test Type',
                                 10,
                                 2,
                                 100,
                                 60)
    expect(armor.get_armor_class(4)).to eq(12)
  end

  it 'defines shields' do
    shield = Adventure::Armor.new('Test Shield',
                                  'Shield',
                                  0,
                                  0,
                                  12,
                                  6)
    expect(shield.get_armor_class(4)).to eq(2)
  end
end

RSpec.describe Adventure::Dice do
  it 'rolls dice' do
    expect(Adventure::Dice.roll('1d6')).to be_a(Integer)
  end

  it 'creates ability arrays' do
    expect(Adventure::Dice.drop_lowest_array).to be_a(Array)
    expect(Adventure::Dice.straight_array).to be_a(Array)
  end
end

RSpec.describe Adventure::NPC do
  ####################
  # NPC Class Checks #
  ####################
  # @todo Create NPC class checks
  # @body Create tests for the NPC class, once you created Race and RPGClass.
end
