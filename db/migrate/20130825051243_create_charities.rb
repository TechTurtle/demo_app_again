class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :name
      t.string :desc
      t.string :email
      t.string :image
      t.string :private

      t.timestamps
    end
  end
end
