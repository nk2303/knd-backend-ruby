class AddContentToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :content, :text
  end
end
