class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :memo
      t.boolean :is_checked
      t.references :note, null: false, foreign_key: true

      t.timestamps
    end
  end
end
