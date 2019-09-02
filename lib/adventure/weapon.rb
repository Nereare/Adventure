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
      hit = to_hit(str_mod, dex_mod, proficiency)
      d = "#{@name}: #{@type} Attack: #{hit.positive? ? '+' : ''}"\
          "#{hit} to hit. Hit #{@damage} #{@damage_type} damage. #{@note}."
      d
    end

    def to_hit(str_mod, dex_mod, proficiency)
      str_mod     = str_mod.to_i
      dex_mod     = dex_mod.to_i
      proficiency = proficiency.to_i

      if @ranged
        dex_mod + proficiency
      elsif @finesse
        [dex_mod, str_mod].max + proficiency
      else
        str_mod + proficiency
      end
    end
  end
end
