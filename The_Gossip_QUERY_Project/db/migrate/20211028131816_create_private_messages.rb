class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content

      belongs_to :users

      t.timestamps
    end
  end
end
