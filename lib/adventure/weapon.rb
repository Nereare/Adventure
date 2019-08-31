# frozen_string_literal: true

module Adventure
  # This defines a weapon entity.
  class Weapon
    attr_accessor :name, :type, :damage, :damage_type, :weight, :price
    attr_accessor :finesse, :note, :ranged

    def initialize(name,
                   type,
                   damage,
                   damage_type,
                   weight,
                   price,
                   finesse,
                   note,
                   ranged = false)
      @name        = name
      @type        = type
      @damage      = damage
      @damage_type = damage_type
      @weight      = weight
      @price       = price
      @finesse     = finesse
      @note        = note
      @ranged      = ranged
    end

    def description(str_mod, dex_mod, proficiency)
      to_hit = if @ranged
                 dex_mod + proficiency
               elsif @finesse
                 [dex_mod, str_mod].max + proficiency
               else
                 str_mod + proficiency
               end

      d = "#{@name}: #{@type} Attack: #{to_hit.positive? ? '+' : ''}"\
          "#{to_hit} to hit. Hit #{@damage} #{@damage_type} damage. #{@note}."
      d
    end
  end
end
