require 'pry'

class IntRate < ActiveRecord::Base

  def pull_rates
    get_data = RestClient.get 'https://www.quandl.com/api/v3/datasets/FRED/DPRIME.json?api_key=yYkYRFD4ohRsNySjnXJT'
    api_rate_data = JSON.parse(get_data)['dataset']['data']
    interest_rates = api_rate_data.flatten
    binding.pry

  end

end
