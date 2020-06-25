class RemoveImageFromBoards < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards, :image, :string
  end
end
