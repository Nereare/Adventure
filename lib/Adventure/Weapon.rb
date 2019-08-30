# frozen_string_literal: true

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

    def description(str_mod, dex_mod, proficiency, format = 'plain')
      bold_open    = ''
      bold_close   = ''
      italic_open  = ''
      italic_close = ''
      case format
      when 'html'
        bold_open = '<strong>'
        bold_close = '</strong>'
        italic_open = '<em>'
        italic_close = '</em>'
      when 'md'
        bold_open = '**'
        bold_close = '**'
        italic_open = '**'
        italic_close = '**'
      end

      to_hit = if @ranged
                 dex_mod + proficiency
               elsif @finesse
                 [dex_mod, str_mod].max + proficiency
               else
                 str_mod + proficiency
               end

      desc = "#{bold_open}#{@name}:#{bold_close} #{@type} Attack: "\
             "#{to_hit.positive? ? '+' : ''}#{to_hit} to hit. Hit #{@damage} "\
             "#{@damage_type} damage. #{@note}."
      desc
    end
  end
end
