# frozen_string_literal: true

require 'adventure/actor'
require 'adventure/building'
require 'adventure/dungeon'
require 'adventure/quest'
require 'adventure/settlement'

module Adventure
  # Sets the current version of the gem
  @version = '0.14.4'

  def self.version
    @version
  end
end
