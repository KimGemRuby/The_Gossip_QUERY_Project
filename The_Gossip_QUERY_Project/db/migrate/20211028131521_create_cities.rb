class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :zip_code

      has_many :users
      has_many :gossips


      t.timestamps
    end
  end
end
