class AddUvToComments < ActiveRecord::Migration
  def change
    add_column :comments, :uv, :integer
  end
end
