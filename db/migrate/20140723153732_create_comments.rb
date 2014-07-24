class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :description
      t.datetime :time
      t.integer :points
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
