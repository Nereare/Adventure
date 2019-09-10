# frozen_string_literal: true

require 'adventure'

RSpec.describe Adventure do
  it 'has a version number' do
    expect(Adventure.version).not_to be nil
  end
end

RSpec.describe Adventure::Actor do
  context 'when creation follows documentation' do
    let(:sam) do
      Adventure::Actor.new(
        'Sam',
        'Male',
        'Halfling',
        'Lawful good',
        [
          'Brown',
          'Curly brown',
          'Rosey-white',
          'stubby, hearty, and steadfast of heart'
        ],
        ['cutlery kit', 'spices', 'bread']
      )
    end

    let(:lady) do
      Adventure::Actor.new(
        'Lady of the Forest',
        'Female',
        'Elf',
        'Lawful neutral',
        [
          'Blue',
          'Bright blonde',
          'Pale',
          'Silent and powerful'
        ],
        ['light of a beloved star']
      )
    end

    let(:smeagol) do
      Adventure::Actor.new(
        'Smeagol',
        'Neural',
        'Halfling',
        'Chaotic neutral',
        [
          'Blue',
          'No',
          'Sickly gray',
          'Suspicious of others'
        ],
        %w[fish precious]
      )
    end

    it 'creates NPCs (Actors)' do
      expect(sam).not_to be nil
      expect(lady).not_to be nil
      expect(smeagol).not_to be nil
      expect(sam).to be_an Adventure::Actor
      expect(lady).to be_an Adventure::Actor
      expect(smeagol).to be_an Adventure::Actor
    end

    it 'describes NPCs (Actors)' do
      expect(sam.description).to be_a String
      expect(lady.description).to be_a String
      expect(smeagol.description).to be_a String
    end
  end

  context 'when creation ignores documentation' do
    it 'checks the description argument' do
      expect do
        Adventure::Actor.new(
          'Name',
          'Gender',
          'Race',
          'Align',
          'Wrong type for "desc" paramenter',
          %w[Item]
        )
      end .to raise_error ArgumentError
      expect do
        Adventure::Actor.new(
          'Name',
          'Gender',
          'Race',
          'Align',
          %w[Eyes Hair Skin],
          %w[Item]
        )
      end .to raise_error ArgumentError
    end

    it 'checks the inventory argument' do
      expect do
        Adventure::Actor.new(
          'Name',
          'Gender',
          'Race',
          'Align',
          %w[Eyes Hair Skin Personality],
          'Wrong item'
        )
      end .to raise_error ArgumentError
    end
  end
end

RSpec.describe Adventure::Building do
  context 'when creation follows documentation' do
    let(:example) do
      Adventure::Building.new(
        'The Prancing Pony',
        'East Road',
        'A large wooden building with rooms for humans and halflings alike',
        'Tavern',
        Adventure::Actor.new(
          'Barliman',
          'Male',
          'Human',
          'Lawful good',
          %w[Brown Brown White Absent-minded],
          %w[Apron Cloth]
        ),
        nil,
        [
          ['Ale Mug', '1cp'],
          ['Potato Soup', '2cp']
        ]
      )
    end

    it 'creates buildings' do
      expect(example).not_to be nil
      expect(example).to be_an Adventure::Building
      expect(example.owner).to be_an Adventure::Actor
    end

    it 'outputs Jekyll-ready IDs' do
      expect(example.id).to match(/[0-9a-z\-]+/)
    end

    it 'outputs descriptions of the building' do
      expect(example.description).to be_a String
    end
  end

  context 'when creation ignores documentation' do
    it 'checks the owner paramenter' do
      expect do
        Adventure::Building.new(
          'The Prancing Pony',
          'East Road',
          'A large wooden building with rooms for humans and halflings alike',
          'Tavern',
          'Barliman',
          nil,
          [
            ['Ale Mug', '1cp'],
            ['Potato Soup', '2cp']
          ]
        )
      end .to raise_error ArgumentError
    end

    it 'checks the quests paramenter' do
      expect do
        Adventure::Building.new(
          'The Prancing Pony',
          'East Road',
          'A large wooden building with rooms for humans and halflings alike',
          'Tavern',
          Adventure::Actor.new(
            'Barliman',
            'Male',
            'Human',
            'Lawful good',
            %w[Brown Brown White Absent-minded],
            %w[Apron Cloth]
          ),
          ['Error'],
          [
            ['Ale Mug', '1cp'],
            ['Potato Soup', '2cp']
          ]
        )
      end .to raise_error ArgumentError
    end
  end
end

RSpec.describe Adventure::Dungeon do
  context 'when creation follows documentation' do
    let(:example) do
      Adventure::Dungeon.new('Moria')
    end

    let!(:room) do
      Adventure::Room.new(
        'Secret Entrance',
        'A dark entry after the moonscript doors',
        nil,
        example,
        false
      )
    end

    it 'creates dungeons' do
      expect(example).not_to be nil
      expect(example).to be_an Adventure::Dungeon
    end

    it 'appends entry-point rooms to dungeons' do
      example.first = room
      expect(example.first).not_to be nil
      expect(example.first).to be_an Adventure::Room
    end
  end

  context 'when creation ignores documentation' do
    let(:example) do
      Adventure::Dungeon.new('Moria')
    end

    it 'checks room paramenters' do
      expect do
        example.first = 'Error Room'
      end .to raise_error TypeError
    end
  end
end

RSpec.describe Adventure::Encounter do
  context 'when creation follows documentation' do
    let(:example) do
      Adventure::Encounter.new(
        'Test Name',
        [
          ['Ghoul', 3, 'See MM pg.148'],
          ['Ghast', 1, 'See MM pg.148']
        ],
        [1050, 240.8, 'No items']
      )
    end

    it 'creates encounters' do
      expect(example).not_to be nil
      expect(example).to be_an Adventure::Encounter
    end

    it 'lists the monsters for itself' do
      expect(example.enemies).not_to be nil
      expect(example.enemies).to be_an Array
    end
  end

  context 'when creation ignores documentation' do
    let(:bad_example_1) do
      Adventure::Encounter.new(
        'Test Name',
        'Errored Enemies',
        [1050, 240.8, 'No items']
      )
    end

    let(:bad_example_2) do
      Adventure::Encounter.new(
        'Test Name',
        [
          ['Ghoul', 3, 'See MM pg.148'],
          ['Ghast', 1, 'See MM pg.148']
        ],
        'Errored Rewards'
      )
    end

    it 'checks for the enemies parameter integrity' do
      expect { bad_example_1 }.to raise_error ArgumentError
    end

    it 'checks for the reward parameter integrity' do
      expect { bad_example_2 }.to raise_error ArgumentError
    end
  end
end
