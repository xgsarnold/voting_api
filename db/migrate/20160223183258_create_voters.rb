class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.string :party
      t.text :token

      t.timestamps null: false
    end
  end
end
