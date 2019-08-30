module Adventure
  class Armor
    attr_accessor :name, :type, :ac, :max_dex, :price, :weight, :disadvantage

    def initialize(name, type, ac, dex, price, weight, stealth_disadvantage = false)
      @name         = name
      @type         = type
      @ac           = ac
      @max_dex      = dex
      @price        = price
      @weight       = weight
      @disadvantage = stealth_disadvantage
    end

    def AC(dex_mod, shield = false)
      return @ac + [@max_dex, dex_mod].min + (shield ? 2 : 0).to_i
    end
  end
end
