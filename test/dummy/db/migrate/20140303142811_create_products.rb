class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :scope
      t.string :key
      t.text :data

      t.timestamps
    end

    add_index :products, [:scope, :key], unique: true
  end
end