class RemoveTimeFromComment < ActiveRecord::Migration
  def change
  	remove_column :comments, :time
  end
end
