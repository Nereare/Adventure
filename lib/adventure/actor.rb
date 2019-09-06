# frozen_string_literal: true

require 'indefinite_article'

module Adventure
  # Defines and creates NPCs.
  class Actor
    attr_reader :name, :gender, :race, :align, :hair, :eyes, :skin, :personality
    attr_reader :equipment, :reference

    def initialize(name, gender, race, align, desc, equipment, ref = false)
      @name = name
      @gender = gender
      @race = race
      @align = align

      @hair, @eyes, @skin, @personality = desc

      @equip = equipment
      @reference = ref

      process_case
      process_equipment
    end

    def description(upcase = false)
      "#{pronoum(upcase)} is #{@align.indefinitize} #{@gender} #{@race}, whose"\
      " hair is #{@hair}, with #{@eyes} eyes and #{@skin} skin. "\
      "#{pronoum(true)} uses #{inventory}. #{@name} is "\
      "#{@personality.chomp '.'}."
    end

    def inventory
      case @equip.length
      when 1
        @equip[0].to_s
      when 2
        @equip.join ' and '
      else
        [@equip[0, @equip.length - 1].join(', '), @equip[-1]].join ', and '
      end
    end

    private

    def pronoum(capitalize = false)
      r = case @gender
          when 'male'
            'he'
          when 'female'
            'she'
          else
            'they'
          end
      r = r.capitalize if capitalize

      r
    end

    def process_case
      @name = @name.capitalize
      @gender = @gender.downcase
      @race = @race.downcase
      @align = @align.downcase

      @hair = @hair.downcase
      @eyes = @eyes.downcase
      @skin = @skin.downcase
      @personality = @personality.downcase
    end

    def process_equipment
      @equip.compact!
      @equip.each_with_index do |item, i|
        @equip[i] = item.downcase.indefinitize
      end
    end
  end
end
