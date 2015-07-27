class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.text :from
      t.text :to
      t.string :num

      t.timestamps null: false
    end
  end
end
