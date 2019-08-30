module Adventure
  class Weapon
    attr_accessor :name, :type, :damage, :damage_type, :weight, :price, :finesse, :note, :ranged

    def initialize(name, type, damage, damage_type, weight, price, finesse, note, ranged = false)
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

    def description(str_mod, dex_mod, proficiency, format = "plain")
      bold_open    = ""
      bold_close   = ""
      italic_open  = ""
      italic_close = ""
      case format
        when "html"
          bold_open    = "<strong>"
          bold_close   = "</strong>"
          italic_open  = "<em>"
          italic_close = "</em>"
        when "md"
          bold_open    = "**"
          bold_close   = "**"
          italic_open  = "**"
          italic_close = "**"
      end

      if @ranged
        to_hit = dex_mod + proficiency
      else
        if @finesse
          to_hit = [dex_mod, str_mod].max + proficiency
        else
          to_hit = str_mod + proficiency
        end
      end

      return bold_open + @name + ":" + bold_close + " " + @type + " Attack: " + (to_hit > 0 ? "+" : "").to_s + to_hit.to_s + " to hit. Hit " + @damage + " " + @damage_type + " damage. " + @note + "."
    end
  end
end
