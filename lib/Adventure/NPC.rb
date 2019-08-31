# frozen_string_literal: true

module Adventure
  # Defines an NPC entity
  class NPC
    attr_accessor :name, :race, :clas, :str, :dex, :con, :int, :wis, :cha
    attr_accessor :speed, :align, :hp, :languages, :resistances, :immunities
    attr_accessor :senses, :shield, :armor, :weapons, :money

    attr_reader :inventory

    def initialize(name,
                   race,
                   clas,
                   level,
                   align,
                   stats,
                   armor,
                   senses = '',
                   extra_languages = [],
                   weapons = [],
                   inventory = [],
                   money = { pp: 0, gp: 0, sp: 0, cp: 0 },
                   resistances = '',
                   immunities = '')
      check_params(race, clas, extra_languages, weapons, inventory, money)

      @name   = name
      @race   = race
      @clas   = clas
      @level  = level.to_i
      @align  = align
      @senses = senses

      @str, @dex, @con, @int, @wis, @cha = stats

      @resistances = resistances
      @immunities  = immunities

      new_hp

      @money = money

      @speed = @race.speed

      @armor = armor
      @weapons = weapons
      @inventory = inventory
    end

    def check_params(race,
                     clas,
                     extra_languages,
                     weapons,
                     inventory,
                     money)
      race_ok? race, 'Race argument is not a Race class'
      class_ok? clas, 'Class argument is not a Class class'
      languages_ok? extra_languages, 'Extra languages argument is not an Array'
      weapons_ok? weapons, 'Weapons argument is not an Array'
      inventory_ok? inventory, 'Inventory argument is not an Array'
      money_ok? money, 'Money argument must define all four currencies'

      true
    end

    def race_ok?(race, msg)
      raise ArgumentError, msg.to_s unless race.is_a? Adventure::Race
    end

    def class_ok?(clas, msg)
      raise ArgumentError, msg.to_s unless clas.is_a? Adventure::RPGClass
    end

    def languages_ok?(extra_languages, msg)
      raise ArgumentError, msg.to_s unless extra_languages.is_a? Array
    end

    def weapons_ok?(weapons, msg)
      raise ArgumentError, msg.to_s unless weapons.is_a? Array
    end

    def inventory_ok?(inventory, msg)
      raise ArgumentError, msg.to_s unless inventory.is_a? Array
    end

    def money_ok?(money, msg)
      plat_gold = money.respond_to?[:pp] && money.respond_to?[:gp]
      silv_copp = money.respond_to?[:sp] && money.respond_to?[:cp]
      raise ArgumentError, msg.to_s unless plat_gold && silv_copp
    end

    def new_hp
      @hp = Adventure::Dice.roll(@level.to_s + @clas.hd)
      @hp += get_modif(@con).to_i * @level.to_i
    end

    def get_modif(score)
      ((score.to_f - 10.5) / 2.0).round(0).to_i
    end

    def get(item)
      @inventory.push(item)
    end

    def drop(item)
      @inventory.delete(item)
    end

    def total_money
      pp, gp, sp, cp = @money.values
      (pp * 10 + gp + sp.to_f / 10.0 + cp.to_f / 100.0).round(2)
    end

    def finances
      pp, gp, sp, cp = @money.values
      s = "#{total_money}gp (#{pp ? pp.to_s + 'pp, ' : ''}"\
          "#{gp ? gp.to_s + 'gp, ' : ''}"\
          "#{sp ? sp.to_s + 'sp, ' : ''}"\
          "#{cp ? cp.to_s + 'cp, ' : ''}"

      s.chomp!(', ').concat(')')
    end
  end
end
