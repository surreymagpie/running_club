class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.references :user, foreign_key: true
      t.date :expires_at
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
