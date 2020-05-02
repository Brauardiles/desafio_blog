class AddCensoredToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :censored, :string
  end
end
