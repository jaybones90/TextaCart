class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :from_number
      t.string :to_number
      t.string :content
      t.timestamps
    end
  end
end
