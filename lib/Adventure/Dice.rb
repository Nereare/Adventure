# frozen_string_literal: true

module Adventure
  class Dice
    def self.roll(str)
      number, die = str.scan(/\d{1,3}/)
      sum = 0
      number.to_i.times do
        b = rand(1..die.to_i)
        sum += b
      end
      sum
    end

    def self.dropLowest
      ar = [0, 0, 0, 0]
      ar.each_with_index do |_k, i|
        ar[i] = rand(1..6)
      end
      del = ar.delete(ar.min)
      sum = 0
      ar.each do |k|
        sum += k
      end
      sum += del * (3 - ar.count)
      sum
    end

    def self.dropLowestArray
      ar = [0, 0, 0, 0, 0, 0]
      ar.each_with_index do |_k, i|
        ar[i] = dropLowest
      end
      ar
    end

    def self.straight
      sum = 0
      3.times do
        sum += rand(1..6)
      end
      sum
    end

    def self.straightArray
      ar = [0, 0, 0, 0, 0, 0]
      ar.each_with_index do |_k, i|
        ar[i] = straight
      end
      ar
    end
  end
end
