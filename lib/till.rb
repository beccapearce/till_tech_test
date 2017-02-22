require_relative 'price_list'
require 'json'

class Till
  include PriceList
  attr_reader :basket, :list
  def initialize
    @basket = []
    @list = get_prices.first["prices"]
  end

  def add_to_basket(item)
    @basket << item

  end

  def find_price(item)
    @list[item]
  end

end
