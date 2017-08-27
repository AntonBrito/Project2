# frozen_string_literal: true

class CreateAppoitments < ActiveRecord::Migration[5.0]
  def change
    create_table :appoitments do |t|
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
