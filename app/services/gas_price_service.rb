class GasPriceService

  def self.conn
    Faraday.new(url: 'https://api.collectapi.com',
                headers: {'Authorization' => "#{ENV['gas_price_api']}"}
                )
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_state_prices
    get_url('/gasPrice/allUsaPrice')
  end
end
