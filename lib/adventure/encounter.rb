# frozen_string_literal: true

module Adventure
  # Defines a singleton encounter (one that happens and finishes in a single
  # page).
  class Encounter
    attr_reader :name, :before, :enemies, :after, :exp, :gold, :items

    # Creates a new Encounter.
    #
    # @param name [String] The name of the Encounter.
    # @param enemies [Array] An Array of arrays, each of which must be comprised
    #   of three elements: Creature name, quantity and commentaries. _E.g._:
    #     [
    #     ...
    #       ['Goblin', 3, 'See MM pg.166'],
    #     ...
    #     ]
    # @param reward [Array] An Array that must contain three elements: the XP
    #   points, the gold coins and any items earned upon winning. Leave an empty
    #   array or 0 if none.
    # @param before [String] If anything can be done before the encounter (_e.g.
    #   _ trying to stealth to gain a surprise round), describe it here.
    # @param after [String] If anything can be done after the encounter (_e.g._
    #   the goblins had a painting and you may try to identify it with a History
    #   check), describe it here.
    def initialize(name, enemies, reward, before = '', after = '')
      @name = name.capitalize
      @before = before
      @after = after

      check_enemies(enemies)
      check_reward(reward)
    end

    private

    def check_enemies(enemies)
      msg = 'Enemies must be an Array of arrays'
      raise ArgumentError, msg unless enemies.is_a? Array

      msg = 'Each enemy must be an array of itself'
      enemies.each do |enemy|
        raise ArgumentError, msg unless enemy.is_a? Array
      end

      @enemies = enemies
    end

    def check_reward(reward)
      msg = 'Reward must be an Array'
      raise ArgumentError, msg unless reward.is_a? Array

      msg = 'Reward must be an Array with three elements'
      raise ArgumentError, msg unless reward.length == 3

      @exp, @gold, @items = reward
    end
  end
end
