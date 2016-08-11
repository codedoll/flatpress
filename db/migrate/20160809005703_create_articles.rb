class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.string :username
      t.string :eventname
      t.string :eventdate_start
      t.string :eventdate_end

      t.timestamps
    end
  end
end
