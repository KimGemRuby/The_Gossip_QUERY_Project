class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content

      belongs_to :users
      has_many :tags
      has_many :comments

      t.timestamps
    end
  end
end
