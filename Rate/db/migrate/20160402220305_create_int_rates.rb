class CreateIntRates < ActiveRecord::Migration
  def change
    create_table :int_rates do |t|
      t.decimal :InterestRate
      t.date :EffectiveDate
      t.date :CreationDate

      t.timestamps null: false
    end
  end
end
