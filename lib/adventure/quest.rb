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
    def begin; end

    private

    def check_dungeon(dungeon)
      raise ArgumentError, 'Must be a Dungeon' unless dungeon.is_a? Dungeon

      @dungeon = dungeon
    end
  end
end
