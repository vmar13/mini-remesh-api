class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.text :text
      t.datetime :date_and_time

      t.timestamps
    end
  end
end
