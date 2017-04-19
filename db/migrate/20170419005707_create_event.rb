class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :date, null: false
      t.string :time, null: false
      t.string :location, null: false
      t.string :description

      t.timestamps
    end
  end
end
