class CreateConstituencies < ActiveRecord::Migration
  def change
    create_table :constituencies do |t|
      t.string :name
      t.integer :voters
      t.belongs_to :voivodeship, index: true

      t.timestamps null: false
    end
    add_foreign_key :constituencies, :voivodeships
  end
end
