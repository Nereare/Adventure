# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates NPCs.
  class Quest
    attr_reader :name, :description, :goal, :reward, :dungeon

    def initialize(name, description, goal, reward, dungeon)
      @name = name.capitalize
      @description = description
      @goal = goal
      @reward = reward

      check_dungeon(dungeon)
    end

    # @todo Add first Room method
    # @body Retrieve first dungeon room ID.
    def begin
      @dungeon.first
    end

    private

    def check_dungeon(dungeon)
      raise ArgumentError, 'Must be a Dungeon' unless dungeon.is_a? Dungeon
      raise Error, 'Must have a first room' unless dungeon.first.is_a? Room

      @dungeon = dungeon
    end
  end
end
