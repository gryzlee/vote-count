class CreateComittees < ActiveRecord::Migration
  def change
    create_table :comittees do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
