json.array!(@int_rates) do |int_rate|
  json.extract! int_rate, :id, :InterestRate, :EffectiveDate, :CreationDate
  json.url int_rate_url(int_rate, format: :json)
end
