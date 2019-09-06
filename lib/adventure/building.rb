# frozen_string_literal: true

require 'indefinite_article'
require 'slugify'

module Adventure
  # Defines and creates general buildings, such as houses and stores.
  class Building
    attr_reader :id, :name, :location, :desc, :type, :owner, :quests, :wares

    # Creates a new building, be it a house, a tavern, or a store.
    #
    # @param name [String] The name of the house, tavern or store.
    # @param location [String] Where the building is located in the village.
    # @param desc [String] A description of the appearence of the building.
    # @param type [String] What kind of building this is (_e.g._ house).
    # @param owner [Actor] An {Actor} instance to own the building.
    # @param quests [Array] Either nil for no quest or an array of {Quest}s.
    # @param wares [Array] Either nil for no wares or an array, each element of
    #   it being a two-element Array, the first the name of the ware, the second
    #   the price of the ware (the price must be a String with the currency).
    def initialize(name, location, desc, type, owner, quests = nil, wares = nil)
      @id = ('building-' + name).slugify
      @name = name
      @location = location
      @desc = desc
      @type = type

      process_case
      check_owner(owner)
      check_quests(quests)
      check_wares(wares)
    end

    # Returns the full description of the building, with owner information.
    #
    # @return [String] A full description of the building.
    def description
      "This is #{@type.indefinitize} on #{@location}.\n\n#{@name} is owned by "\
      "#{@owner.name}, #{@owner.description}\n\n#{@desc.chomp('.')}."
    end

    private

    def process_case
      @name = @name.capitalize
      @location = @location.downcase
      @desc = @desc.downcase
      @type = @type.downcase
    end

    def check_owner(owner)
      raise ArgumentError, 'Owner must be an Actor' unless owner.is_a? Actor

      @owner = owner
    end

    def check_quests(quests)
      unless quests.nil?
        msg = 'Quests must be an Array or nil'
        raise ArgumentError, msg unless quests.is_a?(Array)

        raise ArgumentError, 'Quests must be a non-empty Array' if quests.empty?

        msg = 'Each element of the quests array must be a Quest instance'
        quests.each do |quest|
          raise ArgumentError, msg unless quest.is_a? Quest
        end
      end

      @quests = quests
    end

    def check_wares(wares)
      unless wares.nil?
        raise ArgumentError, 'Wares must be an Array' unless wares.is_a? Array
      end

      @wares = wares
    end
  end
end
