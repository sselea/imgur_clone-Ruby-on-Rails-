class ChangeUvFormatInComment < ActiveRecord::Migration
  def change
  	change_column :comments, :uv, :text
  end
end
