# frozen_string_literal: true

module Adventure
  # Defines and creates a dungeon, which is actually a category for Rooms.
  class Dungeon
    attr_reader :name, :first

    # Creates a new instance of a Dungeon, which is a category for {Room}s and
    # sets an entry point.
    #
    # @param name [String] The name of the dungeon.
    def initialize(name)
      @name = name.capitalize
    end

    # Sets the entry point {Room} to the dungeon.
    #
    # @param room [Room] The entry {Room}.
    def first=(room)
      raise TypeError, 'Must be a Room' unless room.is_a? Room

      @first = room
    end
  end
end
