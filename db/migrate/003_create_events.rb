class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.text :info
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
