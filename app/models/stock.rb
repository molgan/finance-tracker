class Stock < ApplicationRecord
  
  def self.new_from_lookup(ticker_symbol)
    StockQuote::Stock.new(api_key: 'pk_f2c75ab8876348a0960648ba5c3be6a6')
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
  rescue Exception => e
    return nil
  end

end
