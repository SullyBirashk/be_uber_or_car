require 'rails_helper'

RSpec.describe CarMakeService do

 it 'returns example' do
   search = CarMakeService.get_car_makes

   expect(search).to be_a Array
   expect(search.count).to be(62)
 end
end
