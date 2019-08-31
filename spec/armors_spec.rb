# frozen_string_literal: true

require 'adventure'
require 'armors'

RSpec.describe Armors do
  # Heavy Armors
  it 'has a ring mail armor' do
    expect(Armors.ring_mail_armor).to be_a(Adventure::Armor)
  end

  it 'has a chain mail armor' do
    expect(Armors.chain_mail_armor).to be_a(Adventure::Armor)
  end

  it 'has a splint armor' do
    expect(Armors.splint_armor).to be_a(Adventure::Armor)
  end

  it 'has a plate armor' do
    expect(Armors.plate_armor).to be_a(Adventure::Armor)
  end
end

RSpec.describe Armors do
  # Light Armors
  it 'has a padded armor' do
    expect(Armors.padded_armor).to be_a(Adventure::Armor)
  end

  it 'has a leather armor' do
    expect(Armors.leather_armor).to be_a(Adventure::Armor)
  end

  it 'has a studded leather armor' do
    expect(Armors.studded_leather_armor).to be_a(Adventure::Armor)
  end
end

RSpec.describe Armors do
  # Medium Armors
  it 'has a hide armor' do
    expect(Armors.hide_armor).to be_a(Adventure::Armor)
  end

  it 'has a chain shirt armor' do
    expect(Armors.chain_shirt_armor).to be_a(Adventure::Armor)
  end

  it 'has a scale mail armor' do
    expect(Armors.scale_mail_armor).to be_a(Adventure::Armor)
  end

  it 'has a breastplate armor' do
    expect(Armors.breastplate_armor).to be_a(Adventure::Armor)
  end

  it 'has a half plate armor' do
    expect(Armors.half_plate_armor).to be_a(Adventure::Armor)
  end
end
