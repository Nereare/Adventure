# frozen_string_literal: true

require 'marky_markov'
require 'namegen'

RSpec.describe NameGen do
  it 'creates dragonborn names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('dragonborns')).to be_a(String)
  end

  it 'creates dwarf names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('dwarves')).to be_a(String)
  end

  it 'creates elf names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('elves')).to be_a(String)
  end

  it 'creates gnome names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('gnomes')).to be_a(String)
  end

  it 'creates half-elf names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('half_elves')).to be_a(String)
  end
end

RSpec.describe NameGen do
  it 'creates half-orc names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('half_orcs')).to be_a(String)
  end

  it 'creates halfling names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('halflings')).to be_a(String)
  end

  it 'creates human names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('humans')).to be_a(String)
  end

  it 'creates tiefling names' do
    gen = NameGen::NameGen.new
    expect(gen.generate('tieflings')).to be_a(String)
  end
end
