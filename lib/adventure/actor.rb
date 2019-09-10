# frozen_string_literal: true

module Adventure
  # Defines and creates NPCs.
  class Actor
    attr_reader :name, :gender, :race, :align, :hair, :eyes, :skin, :personality
    attr_reader :equipment, :reference

    # Creates a new Actor (NPC) instance.
    #
    # @param name [String] The name of the NPC.
    # @param gender [String] One of 'female', 'male' or others.
    # @param race [String] The race of the NPC.
    # @param align [String] The alignment of the character (both moral and
    #   ethical)
    # @param desc [Array] An array of strings, in the order: hair color, eye
    #   color, skin color and personality.
    # @param equipment [Array] An array of strings, each element being one worn
    #   item.
    # @param ref [String or false] Either a reference to the SRD, WotC books or
    #   other source with further information.
    def initialize(name, gender, race, align, desc, equipment, ref = false)
      @name = name
      @gender = gender
      @race = race
      @align = align

      @reference = ref

      check_desc(desc)
      process_case
      process_equipment(equipment)
    end

    # Constructs the description of the NPC in human-readable format.
    #
    # @param upcase [Boolean] If the description must begin capitalized.
    # @return [String] The description of the NPC.
    def description(upcase = false)
      "#{pronoum(upcase)} is #{@align.indefinitize} #{@gender} #{@race}, whose"\
      " hair is #{@hair}, with #{@eyes} eyes and #{@skin} skin. "\
      "#{pronoum(true)} uses #{inventory}. #{@name} is "\
      "#{@personality.chomp '.'}."
    end

    # Returns the inventory of the NPC in human-readable format.
    #
    # @return [String] The inventory of the NPC.
    def inventory
      case @equip.length
      when 0
        'nothing'
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

    def process_equipment(equipment)
      msg = 'Equipment must be an array'
      raise ArgumentError, msg unless equipment.is_a? Array

      @equip = equipment
      @equip.compact!
      @equip.each_with_index do |item, i|
        @equip[i] = item.downcase.indefinitize
      end
    end

    def check_desc(desc)
      msg = 'Desc must be an Array'
      raise ArgumentError, msg unless desc.is_a? Array

      msg = 'Desc must have exactly four elements'
      raise ArgumentError, msg unless desc.length == 4

      @hair, @eyes, @skin, @personality = desc
    end
  end
end
