class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title

      has_many :gossips

      t.timestamps
    end
  end
end
