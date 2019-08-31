# frozen_string_literal: true

module Adventure
  # Defines armor items
  class Armor
    attr_accessor :name, :type, :armor_class, :max_dex
    attr_accessor :price, :weight, :disadvantage

    def initialize(name,
                   type,
                   armor_class,
                   dex,
                   price,
                   weight,
                   stealth_disadvantage = false)
      @name         = name
      @type         = type
      @armor_class  = armor_class
      @max_dex      = dex
      @price        = price
      @weight       = weight
      @disadvantage = stealth_disadvantage
    end

    def get_armor_class(dex_mod, shield = false)
      @armor_class + [@max_dex, dex_mod].min + (shield ? 2 : 0).to_i
    end
  end
end
