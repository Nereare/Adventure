# frozen_string_literal: true

class NPC
  attr_accessor :name, :race, :clas, :str, :dex, :con, :int, :wis, :cha, :speed, :align, :hp, :languages, :resistances, :immunities, :senses, :shield, :armor, :weapons
  attr_reader :inventory, :pp, :gp, :sp, :cp

  def initialize(name, race, clas, level, align, stats, armor, senses = '', extra_languages = [], weapons = [], inventory = [], cp = 0, sp = 0, gp = 0, pp = 0, resistances = '', immunities = '')
    raise ArgumentError, 'Race argument is not a Race class' unless race.is_a? Race
    raise ArgumentError, 'Class argument is not a Class class' unless clas.is_a? RPGClass
    raise ArgumentError, 'Extra languages argument is not an Array' unless extra_languages.is_a? Array
    raise ArgumentError, 'Weapons argument is not an Array' unless weapons.is_a? Array
    raise ArgumentError, 'Inventory argument is not an Array' unless inventory.is_a? Array
    raise ArgumentError, 'PP argument is not an Array' unless pp.is_a? Numeric
    raise ArgumentError, 'GP argument is not an Array' unless gp.is_a? Numeric
    raise ArgumentError, 'SP argument is not an Array' unless sp.is_a? Numeric
    raise ArgumentError, 'CP argument is not an Array' unless cp.is_a? Numeric

    @name   = name
    @race   = race
    @clas   = clas
    @level  = level
    @align  = align
    @senses = senses

    @str, @dex, @con, @int, @wis, @cha = stats

    @resistances = resistances
    @immunities  = immunities

    @hp = Dice.roll(@level.to_s + @clas.hd) + getModif(@con).to_i * @level.to_i

    @pp = pp
    @gp = gp
    @sp = sp
    @cp = cp

    @speed = @race.speed

    @armor = armor
    @weapons = weapons
    @inventory = inventory
  end

  def getModif(score)
    ((score.to_f - 10.5) / 2.0).round(0).to_i
  end

  def get(item)
    @inventory.push(item)
  end

  def drop(item)
    @inventory.delete(item)
  end

  def setPP(pp)
    @pp = pp.to_i
  end

  def setGP(gp)
    @gp = gp.to_i
  end

  def setSP(sp)
    @sp = sp.to_i
  end

  def setCP(cp)
    @cp = cp.to_i
  end

  def addPP(pp)
    @pp += pp.to_i
  end

  def addGP(gp)
    @gp += gp.to_i
  end

  def addSP(sp)
    @sp += sp.to_i
  end

  def addCP(cp)
    @cp += cp.to_i
  end

  def remPP(pp)
    @pp -= pp.to_i
  end

  def remGP(gp)
    @gp -= gp.to_i
  end

  def remSP(sp)
    @sp -= sp.to_i
  end

  def remCP(cp)
    @cp -= cp.to_i
  end

  def finances
    total = (@pp * 10 + @gp + @sp.to_f / 10.0 + @cp.to_f / 100.0).round(2)
    (total.to_s + 'gp (' + (@pp > 0 ? @pp.to_s + 'pp, ' : '') + (@gp > 0 ? @gp.to_s + 'gp, ' : '') + (@sp > 0 ? @sp.to_s + 'sp, ' : '') + (@cp > 0 ? @cp.to_s + 'cp, ' : '')).chomp(', ') + ')'
  end
end
