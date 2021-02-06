class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.integer :message_id
      t.text :text
      t.datetime :date_and_time

      t.timestamps
    end
  end
end
