class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
