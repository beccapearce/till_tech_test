require_relative '../lib/till.rb'
require_relative 'spec_helper.rb'

describe Till do
  let (:till) {Till.new}

    describe '#initialize' do
      it 'is created with an empty basket' do
      expect(till.basket).to eq([])

    end
  end

  describe "#add_to_basket" do
    it 'finds an item and adds it to basket' do
      item = double(:item)
      expect {till.add_to_basket(item) }.to change {till.basket.length}.by(1)
    end
  end

  describe '#find_price' do
    it 'looks up an item in the price list' do
      item = double(:item => 4.75)
      expect(till.find_price(item)).to eq(4.75)

    end
  end

end
