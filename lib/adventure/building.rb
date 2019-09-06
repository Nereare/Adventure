# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates general buildings, such as houses.
  class Building
    attr_reader :name, :location, :desc, :type, :owner, :quests

    def initialize(name, location, desc, type, owner, quests)
      @name = name
      @location = location
      @desc = desc
      @type = type

      process_case
      check_owner(owner)
      check_quests(quests)
    end

    def description
      "#{desc_header}\n\n#{desc_owner}\n\n#{@desc}\n\n#{desc_quests}"
    end

    private

    def desc_header
      "#{@name} is #{@type.indefinitize} on #{@location}."
    end

    def desc_owner
      "#{@name} is owned by #{@owner.name}, #{@owner.description}"
    end

    # @todo Implement Quest class
    # @body Implement the `Quest` class and implement this method.
    def desc_quests; end

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
      raise ArgumentError, 'Quests must be an Array' unless quests.is_a? Array

      msg = 'Each element of the quests array must be a Quest instance'
      quests.each do |quest|
        raise ArgumentError, msg unless quest.is_a? Quest
      end

      @quests = quests
    end
  end
end
