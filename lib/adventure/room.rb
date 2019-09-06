# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates rooms for dungeons and encounters.
  class Room
    attr_reader :id, :name, :lit, :description, :encounter
    attr_reader :north, :south, :east, :west, :up, :down

    def initialize(name, description, encounter, lit = true)
      @id = ('room-' + name).slugify
      @name = name.capitalize
      @description = description
      @lit = lit

      check_encounter(encounter)
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

    def check_encounter(encounter)
      msg = 'Encounter must be and Encounter instance'
      raise ArgumentError, msg unless encounter.is_a? Encounter

      @encounter = encounter
    end

    def check_room(room)
      msg = 'Room must be a Room instance or nil'
      raise ArgumentError, msg unless room.is_a?(Room) || room.nil?
    end
  end
end
