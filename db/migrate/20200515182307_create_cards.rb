class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :content
      # t.references :board, foreign_key: true, null: false, on_delete: :cascade
    

      t.timestamps
    end
  end
end
