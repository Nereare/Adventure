# frozen_string_literal: true

module Adventure
  # Defines and creates rooms for dungeons and encounters.
  class Room
    attr_reader :id, :name, :lit, :description, :encounter
    attr_reader :north, :south, :east, :west, :up, :down

    # Creates a new room.
    #
    # @param name [String] The name of the Room.
    # @param description [String] The description of the Room.
    # @param encounter [Encounter or nil] A {Encounter} instance or nil if no
    #   encounter happens on this Room.
    # @param dungeon [Dungeon] The {Dungeon} to which this room belongs.
    # @param lit [Boolean] If the room has a light source and is lit by it.
    def initialize(name, description, encounter, dungeon, lit = true)
      @id = ('room-' + name).slugify
      @name = name.capitalize
      @description = description
      @lit = lit

      check_encounter(encounter)
      check_dungeon(dungeon)
    end

    def north=(room)
      check_room(room)
      @north = room
    end

    def south=(room)
      check_room(room)
      @south = room
    end

    def east=(room)
      check_room(room)
      @east = room
    end

    def west=(room)
      check_room(room)
      @west = room
    end

    def up=(room)
      check_room(room)
      @up = room
    end

    def down=(room)
      check_room(room)
      @down = room
    end

    private

    # @todo Implement Encounter class
    # @body Implement this class to represent an encounter.
    def check_encounter(encount)
      msg = 'Encounter must be an Encounter instance'
      raise ArgumentError, msg unless encount.is_a?(Encounter) || encount.nil?

      @encounter = encounter
    end

    def check_dungeon(dungeon)
      msg = 'Dungeon must be a Dungeon instance'
      raise ArgumentError, msg unless dungeon.is_a? Dungeon

      @dungeon = dungeon
    end

    def check_room(room)
      msg = 'Room must be a Room instance or nil'
      raise ArgumentError, msg unless room.is_a?(Room) || room.nil?
    end
  end
end
