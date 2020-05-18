class CreateIcons < ActiveRecord::Migration[6.0]
  def change
    create_table :icons do |t|
      t.text :images, array: true, default: []

      t.timestamps
    end
  end
end
