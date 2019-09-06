# frozen_string_literal: true

# This is the main module of this Gem. It defines each component of an
# Adventure. The export of such adventure is located elsewhere.
module Adventure
  # Sets the current version of the gem
  @version = '0.15.4'

  def self.version
    @version
  end
end
