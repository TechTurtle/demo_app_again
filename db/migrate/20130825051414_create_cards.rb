class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.integer :charity_id
      t.integer :user_amount

      t.timestamps
    end
  end
end
