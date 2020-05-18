class AddProjectRefToBoard < ActiveRecord::Migration[6.0]
  def change
    add_reference :boards, :project, null: false, foreign_key: true
  end
end
