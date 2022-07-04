require 'rails_helper'

RSpec.describe GasPriceService do
  it 'returns example' do
    search = GasPriceService.get_state_prices

    expect(search).to be_a Hash
    expect(search).to have_key(:result)
    expect(search[:result]).to be_a Array
    search[:result].each do |state|
      expect(state).to be_a Hash
    end
  end
end
