class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :date_of_birth, null: false
      t.string :gender, limit: 1, null: false
      t.string :urn, limit: 8

      t.timestamps
    end
  end
end
