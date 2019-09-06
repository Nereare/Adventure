# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates a dungeon, which is actually a category for Rooms.
  class Dungeon
    attr_reader :name, :first

    def initialize(name)
      @name = name.capitalize
    end

    def first=(room)
      raise ArgumentError, 'Must be a Room' unless room.is_a? Room

      @first = room
    end
  end
end
