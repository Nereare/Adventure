# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates general buildings, such as houses and stores.
  class Building
    attr_reader :id, :name, :location, :desc, :type, :owner, :quests, :wares

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

    def description
      "#{desc_header}\n\n#{desc_owner}\n\n#{@desc}"
    end

    private

    def desc_header
      "This is #{@type.indefinitize} on #{@location}."
    end

    def desc_owner
      "#{@name} is owned by #{@owner.name}, #{@owner.description}"
    end

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
        raise ArgumentError, 'Quests must be an Array' unless quests.is_a? Array

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
