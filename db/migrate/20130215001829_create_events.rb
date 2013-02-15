class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :name
      t.string  :description
      t.string  :template
      t.integer :x
      t.integer :y
      t.integer :status
      t.timestamps
    end
  end
end
