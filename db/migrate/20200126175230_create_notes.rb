class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.boolean :is_archived
      t.string :color

      t.timestamps
    end
  end
end
