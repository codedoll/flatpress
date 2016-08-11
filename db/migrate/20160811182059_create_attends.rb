class CreateAttends < ActiveRecord::Migration[5.0]
  def change
    create_table :attends do |t|
      t.string :attendee
      t.string :confirmed_on
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
