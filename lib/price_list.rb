module PriceList

  def get_prices
    JSON.parse(File.read('./coffee.json'), symbolize_keys: true)
  end
end
