# frozen_string_literal: true

require 'lib/Adventure'

RSpec.describe Adventure do
  it 'has a version number' do
    expect(Adventure::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end