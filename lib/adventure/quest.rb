# frozen_string_literal: true

module Adventure
  # Defines and creates NPCs.
  class Quest
    attr_reader :name, :description, :goal, :reward
    attr_accessor :dungeon

    # Creates a new instance of Quest.
    #
    # @param name [String] The name of the Quest.
    # @param description [String] The description and history of the Quest.
    # @param goal [String] The goal of the Quest.
    # @param reward [String] The reward or rewards of completing the Quest.
    # @param dungeon [Dungeon] The dungeon where the Quest takes place.
    def initialize(name, description, goal, reward, dungeon)
      @name = name.capitalize
      @description = description
      @goal = goal
      @reward = reward

      check_dungeon(dungeon)
    end

    # Returns the first {Room} of the {Dungeon} where the Quest takes place.
    #
    # @return [Room] The entry point of the {Dungeon} for this Quest.
    def begin
      @dungeon.first
    end

    private

    def check_dungeon(dungeon)
      msg = 'Dungeon must be a Dungeon'
      raise ArgumentError, msg unless dungeon.is_a? Dungeon

      msg = 'Dungeon must have a first Room'
      raise ArgumentError, msg unless dungeon.first.is_a? Room

      @dungeon = dungeon
    end
  end
end
