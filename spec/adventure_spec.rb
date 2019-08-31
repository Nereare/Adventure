# frozen_string_literal: true

require 'Adventure'

RSpec.describe Adventure do
  ###############
  # Meta Checks #
  ###############
  it 'has a version number' do
    expect(Adventure::VERSION).not_to be nil
  end

  ######################
  # Armor Class Checks #
  ######################
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

  #####################
  # Dice Class Checks #
  #####################
  it 'rolls dice' do
    expect(Adventure::Dice.roll('1d6')).to be_a(Integer)
  end

  it 'creates ability arrays' do
    expect(Adventure::Dice.drop_lowest_array).to be_a(Array)
    expect(Adventure::Dice.straight_array).to be_a(Array)
  end

  # it 'does something useful' do
  #  expect(false).to eq(true)
  # end
end
