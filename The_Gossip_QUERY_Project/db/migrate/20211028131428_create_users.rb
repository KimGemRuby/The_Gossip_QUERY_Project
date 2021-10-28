class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :email
      t.integer :age

      has_many :likes, through: :gossips
      has_many :comments 
      has_one :city, index: true

      
      t.timestamps
    end
  end
end
