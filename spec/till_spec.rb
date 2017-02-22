require_relative '../lib/till.rb'
require_relative 'spec_helper.rb'

describe Till do
  let (:till) {Till.new}
    describe '#initialize' do
      it 'is created with an empty basket' do
      expect(till.basket).to eq([])
    end
  end
end
