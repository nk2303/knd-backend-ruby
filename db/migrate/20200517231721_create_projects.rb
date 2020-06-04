class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :topic
      t.string :background_image
      t.text :others, array: true, default: []

      t.timestamps
    end
  end
end
