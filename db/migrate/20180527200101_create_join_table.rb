class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :members, :memberships do |t|
      t.index [:member_id, :membership_id]
      t.index [:membership_id, :member_id]
    end
  end
end
